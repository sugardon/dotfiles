#!/usr/bin/env node
// Claude Code status line (single line):
//   [model] 📁 dir | <branch-icon> branch | ctx <bar> N% | 5h <bar> N%
// The 5h plan rate limit is Pro/Max only.
// See https://code.claude.com/docs/en/statusline
const { execSync, spawn } = require("child_process");
const fs = require("fs");
const os = require("os");
const path = require("path");

// Nerd Font / Powerline git branch glyph (U+E0A0). Kept as an escape so the
// source stays plain ASCII and the glyph survives editing.
const GIT_ICON = "";

// MCP server count ("connected/total") is not in the status line JSON, and
// `claude mcp list` runs a network health check (too slow to call on every
// render). So we read a cached value and refresh it in the background when
// stale — the status line itself never blocks. Cached value looks like "2/3".
// Keyed by session_id (stable, unique per session).
function mcpServers(sessionId) {
  const cache = path.join(
    os.tmpdir(),
    `claude-statusline-mcp-${sessionId || "default"}.txt`
  );
  const TTL = 600000; // 10 min
  let value = null;
  let fresh = false;
  try {
    const st = fs.statSync(cache);
    const cached = fs.readFileSync(cache, "utf8").trim();
    if (cached !== "") value = cached;
    fresh = Date.now() - st.mtimeMs < TTL;
  } catch (_) {}

  if (!fresh) {
    try {
      // Bump mtime now so concurrent renders don't all spawn a refresh.
      fs.writeFileSync(cache, value == null ? "" : value);
      const refresh =
        'out=$(claude mcp list 2>/dev/null); ' +
        "total=$(printf '%s\\n' \"$out\" | grep -cE ': .+ - '); " +
        "conn=$(printf '%s\\n' \"$out\" | grep -c '✔'); " +
        `printf '%s/%s' "$conn" "$total" > "${cache}.tmp" && mv "${cache}.tmp" "${cache}"`;
      const child = spawn("sh", ["-c", refresh], {
        detached: true,
        stdio: "ignore",
      });
      child.unref();
    } catch (_) {}
  }
  return value;
}

let input = "";
process.stdin.setEncoding("utf8");
process.stdin.on("data", (chunk) => (input += chunk));
process.stdin.on("end", () => {
  let data = {};
  try {
    data = JSON.parse(input);
  } catch (_) {}

  const CYAN = "\x1b[36m";
  const DIR_COLOR = "\x1b[38;2;141;191;255m"; // rgb(141, 191, 255)
  const BRANCH_COLOR = "\x1b[38;2;173;171;237m"; // rgb(173, 171, 237)
  const RESET = "\x1b[0m";

  // 10-char progress bar: filled (▓) vs empty (░).
  const bar = (pct) => {
    const p = Math.max(0, Math.min(100, Math.floor(pct)));
    const filled = Math.floor((p * 10) / 100);
    return "▓".repeat(filled) + "░".repeat(10 - filled);
  };

  const model = (data.model && data.model.display_name) || "";
  const dir =
    (data.workspace && data.workspace.current_dir) || data.cwd || "";
  const dirName = dir ? path.basename(dir) : "";

  let branch = "";
  if (dir) {
    try {
      branch = execSync("git --no-optional-locks branch --show-current", {
        cwd: dir,
        encoding: "utf8",
        stdio: ["ignore", "pipe", "ignore"],
      }).trim();
    } catch (_) {}
  }

  // model + directory + git branch
  let out = `${CYAN}[${model}]${RESET}`;
  if (dirName) out += ` ${DIR_COLOR}📁 ${dirName}${RESET}`;
  if (branch) out += ` | ${BRANCH_COLOR}${GIT_ICON} ${branch}${RESET}`;

  // context usage bar + 5-hour plan rate limit bar
  const ctx = Math.floor(
    (data.context_window && data.context_window.used_percentage) || 0
  );
  out += ` | ctx ${bar(ctx)} ${ctx}%`;
  const fiveH =
    data.rate_limits &&
    data.rate_limits.five_hour &&
    data.rate_limits.five_hour.used_percentage;
  if (fiveH != null) out += ` | 5h ${bar(fiveH)} ${Math.round(fiveH)}%`;

  // MCP servers: connected/total (background-cached)
  const mcp = mcpServers(data.session_id);
  if (mcp) out += ` | mcp ${mcp}`;

  process.stdout.write(out);
});
