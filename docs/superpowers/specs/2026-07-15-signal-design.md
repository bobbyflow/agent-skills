# Signal Skill Design

## Goal

Create a portable founder-facing technical filter that converts incidents, plans, pull requests, architecture proposals, and agent reports into the minimum sufficient understanding required to decide and ship safely.

## Core invariant

Optimize for decision quality per minute, not minimum word count. Include a technical concept only when it changes the founder's decision, risk comprehension, required proof, or delegation boundary. There is no fixed concept limit.

## Operating contract

1. Identify the affected user, revenue, security, reliability, or shipping outcome.
2. Explain the shortest useful causal model beneath the visible symptom.
3. Route the founder to exactly one role: decide, escalate, delegate with proof, observe, or ignore.
4. Select the minimum sufficient technical concepts and define them plainly.
5. Increase depth for irreversible, high-impact, uncertain, cross-system, or architectural decisions.
6. State exact closure evidence tied to the original risk or user journey.
7. Delete details that do not affect the decision, risk, proof, or ownership.

## Default response

- **Signal:** the underlying truth.
- **Your move:** exactly one founder role and one next action.
- **Why it matters:** concrete business or customer consequence.
- **System model:** the shortest useful causal chain.
- **Must understand:** an adaptive number of decision-relevant concepts.
- **Proof before done:** observable closure evidence.
- **Ignore:** safely delegated implementation detail or weak evidence.
- **Founder rule:** one reusable principle.

Omit empty or redundant sections. Preserve the decision, proof, and material-risk content even when the user asks for extreme brevity.

## Depth controls

- `$signal`: minimum sufficient answer.
- `$signal deeper`: add the next useful technical layer without repeating the first answer.
- `$signal teach`: emphasize the reusable mental model.
- `$signal challenge`: attack assumptions and identify what could make the conclusion wrong.
- `$signal decision`: compare choices and recommend one.

These are modes within one skill, not separate skills.

## Epistemic and safety rules

- Label important claims as confirmed, inferred, or unknown when the distinction affects the decision.
- Never manufacture founder work; say `No founder attention required` when evidence supports delegation.
- Never simplify away security, privacy, data loss, financial exposure, irreversible migrations, customer impact, or architectural lock-in.
- Never accept activity statements such as `tests passed`, `deployed`, or `fixed` as outcome proof by themselves.
- Prefer shared-system causes and journey-level proof over local patches and test counts.
- Do not repeat concepts already established in the current conversation unless they are being applied differently.
- Ask a question only when the missing answer could materially change the decision.
- End with one action, not an unranked task list.

## Architecture

Canonical source lives at `skills/signal/` in the `agent-skills` repository. The skill contains only `SKILL.md` and `agents/openai.yaml`; it needs no script, database, or concept glossary. Existing repository installers symlink the canonical source into Codex, Claude, Gemini, OpenClaw, and Hermes.

Register the skill in `manifest.yaml` and the README catalog. Keep runtime state, secrets, and machine-specific configuration outside the repository.

## Validation

First capture natural baseline responses without the skill. Then forward-test the installed skill on:

1. A UI state regression missed by component tests.
2. An exposed production secret incorrectly treated as closed.
3. A reversible low-risk dependency update that should not need founder attention.

Evaluate whether each response:

- identifies the underlying signal;
- assigns the correct founder role;
- includes every material concept and excludes irrelevant detail;
- distinguishes proof from activity;
- communicates uncertainty honestly;
- ends with one executable next action.

Run the system skill validator, repository validator, symlink checks, and `git diff --check` before completion.
