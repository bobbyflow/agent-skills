# System Learn Skill Design

## Goal

Create a portable, explicitly invoked skill that turns available context into the organizing model an expert uses to classify, relate, explain, predict, and apply an unfamiliar X.

## Boundary

System Learn builds initial working understanding and can therefore create an immediate, limited behavior change. It does not claim to transfer all expert knowledge or perform extended retrieval, scoring, spaced repetition, or practice scheduling. Those belong to a future Practice skill.

Signal remains the upstream attention and decision filter. System Learn is used when the user has chosen to understand something.

## Canonical Model

1. **Orientation — Purpose and Boundary:** establish why X matters, what kind of thing it is, its broader category, useful resolution, prerequisites, and safe-to-ignore detail.
2. **Map — Taxonomy and Architecture:** identify what exists and how components, relationships, interfaces, boundaries, dependencies, inputs, and outputs are arranged.
3. **Mechanisms:** when defensible, explain the causal processes, constraints, invariants, and shortest correct causal chain; otherwise distinguish description or interpretation from causation.
4. **Dynamics — Behavior Over Time:** explain applicable state and flows, feedback loops, delays, constraints, nonlinear effects, operating regimes, emergence, failure propagation, adaptation, and recovery.
5. **Application and Trade-offs:** explain when X is useful, alternatives, interventions, optimization targets, sacrifices, and boundary conditions.

Evidence is cross-cutting rather than a mandatory output section. Claims should be grounded, material uncertainty or falsifiers exposed inline, and observations separated from illustrative assumptions.

## Interaction Contract

- Run only through explicit `$system-learn` or an equivalent runtime invocation such as `/system-learn` or a preloaded skill.
- Inspect context first, then ask as many questions as necessary when ambiguity would materially change the model.
- Support focused lenses such as `architecture`, `mechanism`, or `dynamics`; always preserve a minimal orienting anchor.
- Support `quick`, `deep`, `html`, and `save` modifiers. A first-use `deep` request builds a complete higher-resolution model; later `deep` requests add the next layer without repetition. `save` writes validated Markdown to an explicit or runtime-appropriate artifact path without overwriting files.
- For broad fields, enforce a breadth gate: return the top-level invariant, organizing axes, major relationships, defensible central mechanism and dynamics, and prioritized zoom sequence. Omit causal lenses for descriptive or normative fields rather than fabricating coherence; omit algorithm catalogues, subfield-specific equations, worked cases, and implementation workflows until the user zooms in.
- Use verified personal knowledge bridges when helpful and state where each analogy breaks.
- Present the dominant model and credible alternatives for contested subjects.

## HTML Contract

HTML mode renders the same semantic model as one responsive standalone teaching artifact with all required CSS and JavaScript inline and no network runtime dependency. It may use concept-specific diagrams, interactions, and explicitly illustrative simulations, but it must not introduce a practice system, fabricate data, or let presentation change the model.

## Architecture

The canonical source lives in `skills/system-learn/`. `SKILL.md` owns the workflow and core schema. Conditional reference files own domain adaptation and HTML rendering rules. The existing installer symlinks the source into Codex, Claude, Gemini, OpenClaw, and Hermes.

No generator script or rigid HTML template is included in v1. Rendering infrastructure should be extracted only after repeated use reveals a stable pattern.

## Acceptance

The skill must succeed across narrow components, whole systems, broad fields, contested trading concepts, and life/social systems. Outputs must classify X, preserve Architecture as an explicit concept, distinguish mechanisms from behavior over time, cover applicable feedback/delay/nonlinear/failure dynamics, connect relevant prerequisites, and avoid false completeness.

Full-model responses must label Orientation, Map with explicit Taxonomy and Architecture subheadings, Mechanisms, Dynamics, Application and Trade-offs, Compressed Mental Model, and Self-check unless a lens is genuinely inapplicable. Focused responses must retain an Anchor plus the requested lens.

HTML output must render responsively, remain accessible, expose assumptions, and match the text-level semantic model.
