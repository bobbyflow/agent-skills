# Domain and Scale Lenses

Load only the relevant sections. The core System Learn model remains authoritative.

## Scale Routing

### Component or concept

Locate X inside its parent system. Emphasize category, responsibility, interfaces, mechanism, and the problem it solves.

### Pattern or protocol

Explain the recurring problem, participants, rules, variants, trade-offs, and when a different pattern is preferable.

### Whole system or codebase

Map boundaries, major subsystems, sources of truth, control and data flows, state ownership, external dependencies, feedback, and failure domains. Ground claims in governing files and actual consumers.

### Field or broad domain

Provide the field's organizing questions, major schools or subfields, shared primitives, defensible central mechanisms and dynamics, unresolved disputes, and a dependency-ordered zoom path. Omit causal lenses that do not fit descriptive or normative fields. Do not attempt exhaustive coverage in one response.

## Software Engineering

Inspect source, configuration, tests, runtime evidence, and governing documentation when available. Trace:

- state ownership and sources of truth;
- control plane versus data plane;
- synchronous versus asynchronous flows;
- interfaces, adapters, queues, caches, coordinators, and policy boundaries;
- consistency, latency, throughput, availability, and security trade-offs;
- retry loops, backpressure, contention, cascading failure, and recovery.

Prefer the real implementation and downstream consumer over generic architecture folklore.

## AI Engineering

Locate X across data, representation, objective, optimization, training, inference, evaluation, and deployment. Explain:

- what is learned versus configured or retrieved;
- where state exists and when it changes;
- compute, memory, latency, quality, and controllability trade-offs;
- distribution shift, feedback from deployment, compounding error, and evaluation limits;
- prerequisites from mathematics, software, or model architecture only when they block understanding.

Separate demonstrated capability from benchmark, marketing, or mechanistic speculation.

## Trading and Markets

Locate X across instruments, participants, incentives, information, positioning, liquidity, price formation, risk transfer, and time horizon. Explain:

- who acts, what they observe, and what constrains them;
- stocks, flows, inventories, expectations, and reflexivity;
- feedback, delays, crowding, nonlinear liquidation, regime shifts, and path dependence;
- the difference between an explanatory model, a forecast, and a tradable edge;
- what changes after costs, liquidity, timing, and live prices.

Present dominant and credible competing models without manufacturing certainty.

## Life, Social, and Organizational Systems

Map agents, goals, incentives, beliefs, norms, information asymmetry, power, resources, boundaries, and adaptation. Explain:

- reinforcing and balancing social feedback;
- delayed consequences and second-order effects;
- emergence, reflexivity, strategic behavior, and changing rules;
- where causal evidence is weak or context-dependent;
- which conclusions are descriptive, normative, or personal judgment.

Avoid mechanical precision when agents can learn, reinterpret, resist, or change the system.
