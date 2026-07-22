---
name: system-learn
description: Use only when explicitly invoked as $system-learn, or through a runtime equivalent such as /system-learn or a preloaded system-learn skill, to construct an expert organizing model of an unfamiliar concept, component, pattern, codebase, system, field, trading topic, or life system; supports full, focused-lens, quick, deep, HTML, and saved outputs.
---

# System Learn

## Purpose

Make an unfamiliar X legible by transferring the organizing model an expert uses to classify, relate, explain, predict, and apply it. Build initial working understanding, not exhaustive expertise or a practice curriculum.

## Interpret the Request

Use `$system-learn X` for the full adaptive model. Treat these words as composable controls:

- `orientation`, `map`, `taxonomy`, `architecture`, `mechanism`, `dynamics`, `application`, or `trade-offs`: focus on those lenses.
- `quick`: give only Orientation, Map with explicit Taxonomy and Architecture, and one compressed mental model. Include at most one causal sentence needed to connect them; do not expand Mechanisms, Dynamics, or Application unless the user asks.
- `deep`: when a model already exists in the current conversation, add the next useful level without repeating it; otherwise build a complete first model at greater technical resolution.
- `html`: create the visual artifact described in [references/html-output.md](references/html-output.md).
- `save`: persist the text model as Markdown; otherwise keep it in chat. Use an explicit path first, then the host-designated artifact directory, then `<cwd>/outputs/system-learn-<slug>.md`. Never overwrite an existing file; add a timestamp suffix. Validate that the saved file contains the requested lenses and report its absolute path.

For a focused lens, first give a minimal anchor stating what X is, its broader category, and where the lens fits. Accept singular, plural, combined, and natural-language variants rather than enforcing command syntax.

## Method

1. Inspect the available conversation, files, logs, documents, and artifacts before asking questions.
2. Infer the user's purpose, current knowledge, system boundary, scale of X, and useful resolution.
3. Ask as many questions as necessary when ambiguity would materially change the model. Batch related questions and stop when the model can be built correctly.
4. Classify X before explaining it: component, process, protocol, pattern, abstraction, metric, system, field, or another more accurate kind.
5. Ground the explanation in exact context first. Research authoritative material when context is insufficient, niche, contested, or time-sensitive and the runtime permits it.
6. Build the requested lenses. Omit inapplicable detail rather than forcing every concept into systems language.
7. Connect X to verified concepts the user already understands when this reduces prerequisite distance. State where each analogy stops working.
8. Finish a full model with one compressed mental model and three short self-check prompts selected from classification, relationship mapping, causal explanation, comparison, application, and prediction. Use only prompts supported by the nature of X.

Read the relevant section of [references/domain-lenses.md](references/domain-lenses.md) when the domain or scale needs specialized treatment.

## Core Model

### Orientation — Purpose and Boundary

Explain why X matters for the user's purpose, what kind of thing it is, its broader category, the useful boundary and resolution, required prerequisites, and what can safely be ignored.

### Map — Taxonomy and Architecture

- **Taxonomy:** identify the important categories, subcategories, terminology, siblings, and alternatives.
- **Architecture:** show how components, relationships, interfaces, boundaries, dependencies, inputs, outputs, and consumers are arranged.

### Mechanisms

When X has a defensible causal process, explain what makes it work, the governing constraints or invariants, and the shortest correct causal chain. Otherwise distinguish description, interpretation, and correlation from mechanism.

### Dynamics — Behavior Over Time

Explain only the applicable dynamics:

- state, stocks, flows, and accumulation;
- reinforcing and balancing feedback loops;
- delays and lagged effects;
- bottlenecks and capacity constraints;
- **nonlinear effects:** disproportionate responses, compounding, saturation, thresholds, phase changes, and tipping points;
- operating regimes, path dependence, and emergence;
- failure propagation, degradation, adaptation, stabilization, and recovery.

Mechanisms explain how a process works; dynamics explain what repeated interactions produce over time.

### Application and Trade-offs

Explain when X is useful, available alternatives or interventions, what each choice optimizes or sacrifices, boundary conditions, and common misuse.

## Presentation

Use progressive disclosure:

1. Give a fast expert orientation.
2. Build the working model at the depth required by purpose and prerequisite distance.
3. Add assumptions, exceptions, misconceptions, or credible competing models only when they change understanding.

Select diagrams, causal chains, examples, analogies, glossaries, tables, and code according to the comprehension bottleneck. Do not emit every format mechanically.

For a full model, use these explicit headings unless a section is genuinely inapplicable:

```markdown
## Expert orientation
## Map
### Taxonomy
### Architecture
## Mechanisms
## Dynamics — Behavior Over Time
## Application and Trade-offs
## Compressed mental model
## Self-check
```

For a focused request, use `## Anchor` followed by the exact requested lens heading.

For a full broad-field request, apply a breadth gate: provide the top-level invariant, organizing axes, major relationships, one central mechanism, characteristic dynamics, and prioritized zoom sequence when those causal lenses are defensible. If the field is mainly descriptive or normative, say which lenses do not apply rather than inventing coherence. Stop once the user can locate the subfields and choose the next zoom. In the first response, do not add a catalogue of algorithms, subfield-specific equations, a worked case, or an implementation workflow unless one is indispensable to the map. Keep each subfield to the minimum distinction needed to place it. `quick` and focused-lens requests override this full-model breadth contract. Do not disguise an encyclopedia dump as a complete mental model. For contested subjects, present the dominant model first, then credible alternatives and the conditions under which each applies.

## Evidence as a Cross-Cutting Rule

Do not create a mandatory Evidence section. Ground important claims, expose material uncertainty or falsifiers inline, distinguish observations from illustrative assumptions, and follow the host runtime's citation rules. Surface observability explicitly only when it improves the model or a decision.

## Guardrails

- Never claim the user now possesses all of an expert's factual, experiential, or tacit knowledge.
- Never fabricate familiarity, personal history, relationships, data, diagrams, or causal certainty.
- Do not omit Architecture or collapse it into an unlabeled list of parts when it applies; say why it is inapplicable otherwise.
- Do not call static relationships Dynamics; Dynamics is behavior over time.
- Do not turn the closing self-check into extended retrieval practice, scoring, or spaced repetition.
- Do not save text unless requested. HTML mode necessarily creates one artifact.
- Do not let visual presentation change the semantic model.
