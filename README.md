# Agent Skills

Public source-of-truth monorepo for portable AI-agent skills used across Bobby's agent stack.

## Architecture

- Canonical skills live in `skills/<skill-name>/`.
- Local agents consume skills through symlinks from their own skill directories.
- Updating one canonical skill updates Codex, Claude Code, Gemini, OpenClaw, and Hermes together.
- `manifest.yaml` records skill lineage, source repo, and deployment targets.

## Skill catalog

| Skill | Purpose | Original source |
|---|---|---|
| `elon-algorithm` | Question requirements, delete, simplify, accelerate, automate last | This monorepo |
| `signal` | Extract the founder decision, essential technical model, proof, and noise | This monorepo |
| `system-learn` | Build an expert organizing model of any concept or system | This monorepo |
| `orchestrator-coach` | Turn project history into architecture lessons | `bobbyflow/orchestrator-coach-skill` |
| `telegram-messenger` | Send messages/images via local Telegram Desktop | `bobbyflow/telegram-messenger-skill` |
| `wechat-messenger` | Send messages via local WeChat Desktop | `bobbyflow/wechat-messenger-skill` |
| `whatsapp-messenger` | Send messages/images via local WhatsApp Desktop | `bobbyflow/whatsapp-messenger-skill` |

## Install locally

```bash
./scripts/install-skill.sh all
python3 scripts/validate-skills.py
```

Install one skill only:

```bash
./scripts/install-skill.sh elon-algorithm
```

## Update workflow

```bash
cd /Users/bobbc/Projects/agent-skills
# edit skills/<skill-name>/SKILL.md or bundled scripts
python3 scripts/validate-skills.py
git add .
git commit -m "Update <skill-name> skill"
git push
```

Because agent installs are symlinks, local agent stacks pick up edits immediately.

## Agent target roots

- Codex: `/Users/bobbc/.codex/skills`
- Claude Code: `/Users/bobbc/.claude/skills`
- Gemini: `/Users/bobbc/.gemini/skills`
- OpenClaw: `/Users/bobbc/.openclaw/skills`
- Hermes: `/Users/bobbc/.hermes/skills`
