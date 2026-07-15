# Signal Skill Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build, install, and validate a portable Signal skill that gives a non-technical founder the minimum sufficient technical understanding for safe, fast decisions.

**Architecture:** Store one canonical skill in the `agent-skills` repository and expose it to each local agent runtime through the existing symlink installer. Keep judgment rules in one concise `SKILL.md`; keep UI discovery metadata in `agents/openai.yaml`.

**Tech Stack:** Markdown, YAML, Bash symlink installer, Python validators, Git.

## Global Constraints

- Use an adaptive concept count; never impose a fixed maximum.
- Preserve material security, privacy, data-loss, financial, customer, migration, and architectural risks.
- Route the founder to one role: decide, escalate, delegate with proof, observe, or ignore.
- Require outcome evidence rather than activity statements.
- Protect unrelated edits in the canonical repository.

---

### Task 1: Capture behavioral baselines

**Files:**
- No repository files modified.

**Interfaces:**
- Consumes: three raw founder scenarios from the design specification.
- Produces: baseline failure evidence used to sharpen `SKILL.md`.

- [ ] Run fresh agents without Signal on the UI regression, exposed-secret, and low-risk dependency scenarios.
- [ ] Record specific gaps: missing founder-role routing, missing technical teaching, unnecessary escalation, weak proof, or hidden uncertainty.

### Task 2: Create the canonical skill

**Files:**
- Create: `skills/signal/SKILL.md`
- Create: `skills/signal/agents/openai.yaml`

**Interfaces:**
- Consumes: `$signal`, `$signal deeper`, `$signal teach`, `$signal challenge`, and `$signal decision` prompts.
- Produces: adaptive founder-level technical analysis using the approved response contract.

- [ ] Initialize `signal` with the canonical skill scaffolder and UI metadata.
- [ ] Replace the scaffold with the operating algorithm, risk calibration, response contract, modes, and failure protections from the design.
- [ ] Run the system validator and confirm `signal` passes.

### Task 3: Register and install the skill

**Files:**
- Modify: `manifest.yaml`
- Modify: `README.md`

**Interfaces:**
- Consumes: canonical `skills/signal/` source.
- Produces: discoverable catalog entry and symlinks in every configured agent target.

- [ ] Add Signal to the manifest and README catalog.
- [ ] Install it with `./scripts/install-skill.sh signal`.
- [ ] Run `python3 scripts/validate-skills.py` from the canonical checkout and confirm every target resolves to the canonical source.

### Task 4: Forward-test and close loopholes

**Files:**
- Modify if required by observed failures: `skills/signal/SKILL.md`

**Interfaces:**
- Consumes: the same three raw scenarios used for baseline testing, now explicitly using `$signal`.
- Produces: evidence that the skill improves role routing, calibrated depth, technical teaching, and proof requirements.

- [ ] Run fresh agents using the installed skill without revealing expected answers.
- [ ] Compare outputs against the six validation criteria in the design.
- [ ] Tighten only rules connected to an observed failure, then rerun the affected scenario.

### Task 5: Final validation and focused commit

**Files:**
- Verify: `skills/signal/SKILL.md`
- Verify: `skills/signal/agents/openai.yaml`
- Verify: `manifest.yaml`
- Verify: `README.md`

**Interfaces:**
- Consumes: completed source and installed symlinks.
- Produces: one auditable commit containing only Signal-related changes.

- [ ] Run both validators, word count, symlink resolution checks, YAML parsing, and `git diff --check` in one batch.
- [ ] Confirm unrelated canonical-repository edits remain untouched.
- [ ] Commit only Signal source, registration, design, and plan artifacts with `feat: add founder signal filter skill`.
