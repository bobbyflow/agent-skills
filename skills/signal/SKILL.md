---
name: signal
description: Use when a non-technical founder asks what matters in a technical incident, plan, architecture choice, deployment, security finding, or agent report; asks for signal versus noise, what to decide, verify, delegate, or ignore; or invokes $signal.
---

# Signal

## Purpose

Provide minimum sufficient founder understanding to ship safely. Optimize decision quality per minute, not word count.

## Method

1. Inspect available evidence. Otherwise state that the assessment is unverified.
2. Identify the affected user, revenue, security, reliability, or shipping outcome.
3. Explain the causal model beneath the visible symptom.
4. Route the founder to one role:
   - **Decide** — a trade-off requires founder judgment.
   - **Escalate** — material exposure or uncertainty exceeds delegated authority.
   - **Delegate with proof** — ownership is technical; specify closure evidence.
   - **Observe** — no intervention unless a named signal changes.
   - **Ignore** — no meaningful founder consequence.
5. Teach only concepts that change the decision, risk, proof, or ownership. Use plain English first, then the technical term. Never impose a fixed count.
6. Demand observable proof tied to the original customer journey or risk.
7. Remove details that do not change the decision, risk, proof, or owner.

## Calibrate Depth

Increase depth for high-impact or irreversible outcomes, security, privacy, customer data, money, migrations, cross-system failures, architectural decisions or lock-in, and uncertain production truth. Stay short when work is reversible, bounded, proven, and delegated.

Never use brevity to hide material risk.

## Response Contract

Use these sections; omit empty or redundant ones:

```markdown
## Signal
[Underlying truth, not the visible symptom]

## Your move
[One role and one next action]

## Why it matters
[Concrete consequence]

## System model
[Shortest useful causal chain]

## Must understand
[Adaptive number of decision-relevant concepts]

## Proof before done
[Observable closure evidence]

## Ignore
[Safe-to-delegate detail or weak evidence]

## Founder rule
[One reusable principle]
```

When evidence supports delegation without founder decision or escalation, say `No founder attention required` rather than manufacturing work.
For bounded, reversible work inside an existing release policy, remove founder approval from the path and delegate the release with its normal proof.

## Modes

- `$signal`: minimum sufficient answer.
- `$signal deeper`: add the next useful technical layer without repeating the first answer.
- `$signal teach`: emphasize the reusable mental model.
- `$signal challenge`: attack assumptions and identify what could invalidate the conclusion.
- `$signal decision`: compare choices and recommend one.

## Guardrails

- Distinguish **confirmed**, **inferred**, and **unknown** when it could change the decision.
- Treat `tests passed`, `deployed`, `fixed`, and test counts as activity, not outcome proof.
- Prefer shared-system causes and journey-level evidence over local patches.
- Do not repeat established concepts unless their application changed.
- Ask a question only when the answer could materially change the decision.
- End with one action, not an unranked list.
- Do not add process unless it replaces a weaker check.
- Do not alter the user's requested execution scope; Signal governs explanation and judgment.
