# LiquidGlass AI Agent Skill Installer for Windows
# Supports Antigravity, Claude Code, OpenAI Codex CLI, and Universal Agent standard

$ErrorActionPreference = "Stop"

$SkillName = "liquidglass"
$CurrentDir = $PSScriptRoot

$Targets = @(
    "$HOME\.agents\skills\$SkillName",
    "$HOME\.claude\skills\$SkillName",
    "$HOME\.codex\skills\$SkillName",
    "$HOME\.gemini\config\skills\$SkillName"
)

Write-Host "Installing $SkillName skill across all AI agents..." -ForegroundColor Cyan

foreach ($target in $Targets) {
    if (-not (Test-Path $target)) {
        New-Item -ItemType Directory -Force -Path $target | Out-Null
    }
    Copy-Item -Path "$CurrentDir\SKILL.md" -Destination "$target\SKILL.md" -Force
    if (Test-Path "$CurrentDir\references") {
        Copy-Item -Path "$CurrentDir\references" -Destination $target -Recurse -Force
    }
    if (Test-Path "$CurrentDir\examples") {
        Copy-Item -Path "$CurrentDir\examples" -Destination $target -Recurse -Force
    }
    Write-Host "  [OK] Installed to $target" -ForegroundColor Green
}

Write-Host "Done! LiquidGlass skill is now available in Claude Code, ChatGPT/Codex, Antigravity, and .agents." -ForegroundColor Yellow
