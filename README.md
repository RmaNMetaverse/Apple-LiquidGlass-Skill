# LiquidGlass AI Agent Skill

Universal AI agent skill for implementing realistic WebGL liquid glass refraction, blur, chromatic aberration, and lighting effects using [`@ybouane/liquidglass`](https://github.com/ybouane/liquidglass) ([Live Demo](https://liquid-glass.ybouane.com/)).

Compatible with:
- **Google Antigravity & Antigravity CLI (`agy`)**
- **Anthropic Claude Code (`claude`)**
- **OpenAI Codex CLI & ChatGPT (`codex`)**
- **Cursor / Windsurf (`.cursorrules` / `.agents`)**
- **Universal Agent Standard (`~/.agents/skills`)**

---

## ⚡ 1-Line Quick Install

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/<YOUR_GITHUB_USER>/liquidglass-skill/main/install.ps1 | iex
```

### macOS / Linux (Bash)
```bash
curl -fsSL https://raw.githubusercontent.com/<YOUR_GITHUB_USER>/liquidglass-skill/main/install.sh | bash
```

---

## 📂 Manual Installation Locations

| Agent | Global Directory | Project-Level Directory |
| :--- | :--- | :--- |
| **Antigravity / Gemini** | `~/.gemini/config/skills/liquidglass/` | `.agents/skills/liquidglass/` |
| **Claude Code** | `~/.claude/skills/liquidglass/` | `.claude/skills/liquidglass/` |
| **ChatGPT / Codex** | `~/.codex/skills/liquidglass/` | `.codex/skills/liquidglass/` |
| **Universal Agents** | `~/.agents/skills/liquidglass/` | `.agents/skills/liquidglass/` |

---

## 🚀 How to Publish on the Internet

1. **Push to GitHub**:
   ```bash
   git init
   git add .
   git commit -m "feat: initial liquidglass agent skill"
   git branch -M main
   git remote add origin https://github.com/<YOUR_GITHUB_USER>/liquidglass-skill.git
   git push -u origin main
   ```

2. **Submit to Skill Registries & Agent Hubs**:
   - Submit to the official [Agent Skills Hub / Directory](https://github.com/topics/agent-skills).
   - Or open a PR to [`ybouane/liquidglass`](https://github.com/ybouane/liquidglass) to include a `skills/liquidglass/` folder directly in the official upstream repository!
