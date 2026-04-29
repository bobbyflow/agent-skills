# Agent Skills

Public source-of-truth monorepo for portable AI-agent skills used across Bobby's agent stack.

## Architecture

- Canonical skills live in `skills/<skill-name>/`.
- Local agents consume skills through symlinks from their own skill directories.
- Updating one canonical skill updates Codex, Claude Code, Gemini, OpenClaw, and Hermes together.

## Current skills

- `elon-algorithm` — first-principles project/workflow audit: question requirements, delete, simplify, accelerate cycle time, automate last.

## Install locally

```bash
./scripts/install-skill.sh elon-algorithm
python3 scripts/validate-skills.py
```

## Agent target roots

- Codex: `/Users/bobbc/.codex/skills`
- Claude Code: `/Users/bobbc/.claude/skills`
- Gemini: `/Users/bobbc/.gemini/skills`
- OpenClaw: `/Users/bobbc/.openclaw/skills`
- Hermes: `/Users/bobbc/.hermes/skills`
