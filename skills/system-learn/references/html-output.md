# HTML Teaching Output

Use this contract only when the user requests `html` or an equivalent visual artifact.

## Semantic Contract

Build the text-level system model first, then render the same model visually. Do not let layout, animation, or available widgets invent relationships or suppress material caveats.

Support focused HTML such as `html dynamics X`; include the same minimal anchor required for focused text output.

## Artifact Contract

- Produce one responsive standalone `.html` file with inline CSS and JavaScript.
- Use the user's explicit path when provided; otherwise use the host-designated artifact directory, then `<cwd>/outputs/`.
- Use no build step or network runtime dependency. Inline all required CSS and JavaScript so the page remains functional offline; ordinary source links may remain external.
- Give the page a concept-specific title and visible generated-at context when timeliness matters.
- Report the absolute path and whether visual validation was completed.

## Visual Selection

Choose representations by semantic job:

- hierarchy or categories: tree, nested map, or comparison matrix;
- architecture: labeled component-and-relationship diagram;
- mechanism: directed causal sequence;
- dynamics: stocks and flows, feedback loops, timelines, state transitions, or scenario controls;
- trade-offs: frontier, matrix, or side-by-side comparison;
- quantitative behavior: chart only when real data or an explicit illustrative model exists.

Label illustrative quantities and simulation assumptions. Never present invented numbers as observations.

## Interaction

Use interaction only to reveal structure:

- expand components or terms;
- trace a causal path;
- toggle layers, scenarios, or failure modes;
- adjust an explicitly illustrative input to reveal nonlinear behavior;
- show where an analogy or operating regime breaks.

Do not add accounts, persistence, scores, a large quiz system, or spaced repetition. Those belong to the future Practice skill.

## Design and Accessibility

- Prefer a coherent teaching surface over a dashboard or wall of cards.
- Establish clear reading order and progressive disclosure.
- Make diagrams legible at desktop and narrow widths.
- Provide text equivalents, visible focus states, semantic headings, labels, and sufficient contrast.
- Respect reduced-motion preferences and avoid decorative animation.
- Provide a useful print layout.

## Validation

Before completion:

1. Check the file for unresolved placeholders and malformed markup.
2. Render it when browser capability exists.
3. Inspect desktop and narrow layouts for clipping, overlap, and unreadable diagrams.
4. Exercise every control with mouse and keyboard.
5. Check runtime console errors when available.
6. Compare the page against the semantic model for missing, contradicted, or invented claims.

If rendering is unavailable, report that only static validation was completed.
