---
name: elon-algorithm
description: Apply Elon Musk's five-step algorithm to new projects, products, workflows, codebases, or automation plans. Use when the user says Elon algorithm, asks to question/delete/simplify/accelerate/automate, starts a new project, wants first-principles pruning, or asks whether a system is overbuilt. Always preserve the order: question requirements, delete, simplify, accelerate cycle time, automate last.
---

# Elon Algorithm

## Purpose

Use this skill to stress-test projects and workflows before building or automating them. The core discipline is order: do not automate, accelerate, or optimize work that should not exist.

## Non-negotiable order

1. Question every requirement.
2. Delete every requirement, part, process, or step that is not required.
3. Simplify and optimize only what survived deletion.
4. Accelerate cycle time only after simplification.
5. Automate last.

If a later step looks attractive, explicitly pull the work back to the earliest unresolved step.

## Operating behavior

When invoked:

1. Identify the artifact under review: project idea, repo, workflow, feature, process, toolchain, or automation.
2. If real files/tools are available, inspect them before recommending changes.
3. Run the five gates in order.
4. Attempt all five steps, but mark a step `Deferred` when the project lacks enough evidence or maturity.
5. Prefer deletion over cleverness. If nothing is deleted, say: `Deletion was too conservative.`
6. End with the smallest next action that improves learning speed.

## Default output contract

```markdown
## Elon Algorithm Audit

### 1. Question requirements
- Requirement:
- Owner/source:
- Status: Required | Questionable | Unproven
- First-principles challenge:

### 2. Delete
- Delete:
- Why:
- Risk if wrong:

### 3. Simplify
- Simplify:
- New simpler form:

### 4. Accelerate cycle time
- Fastest feedback loop:
- Cycle-time cut:

### 5. Automate last
- Automate now:
- Defer automation:
- Reason:

## Final recommendation

## Next action
```

Keep the output concise unless the user asks for a deep review.

## Gate rules

### 1. Question requirements

Every requirement must have a named reason to exist. Treat inherited requirements, stakeholder requests, default tech choices, and "best practices" as suspicious until proven.

Classify each requirement:
- `Required`: directly necessary for the goal, user, legal constraint, safety, revenue, or output contract.
- `Questionable`: possibly useful, but not yet proven.
- `Unproven`: assumed, copied, premature, cosmetic, or automation-driven.

### 2. Delete

Delete before simplifying. Target features, abstractions, tools, meetings, dashboards, schemas, integrations, automations, and requirements that do not directly support the goal.

Use a reversible-delete mindset: prefer removing and watching for pain over keeping speculative complexity.

### 3. Simplify

Simplify only surviving requirements. Prefer fewer moving parts, fewer handoffs, smaller interfaces, plain files before databases, manual checks before platforms, and one output contract before many.

### 4. Accelerate cycle time

After simplification, shorten the loop between action and truth. Prefer prototypes, smoke tests, scripted validation, smaller batches, faster review paths, and immediate artifact checks.

### 5. Automate last

Automate only stable, necessary, repeated steps. Reject automation when the process is still unclear, low-frequency, politically unsettled, or likely to change after the next learning loop.

## Failure modes to call out

- Automating waste.
- Optimizing an unnecessary process.
- Keeping requirements because someone senior requested them.
- Building for hypothetical scale before proving demand.
- Treating tools as requirements.
- Skipping deletion because it feels uncomfortable.

## Response style

Be direct, skeptical, and operator-focused. The goal is not to sound clever; the goal is to reduce the system to what must exist, then speed up learning.
