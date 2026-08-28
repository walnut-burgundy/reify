# Predator and prey: a first concrete example

## Use the story, but do not certify the story as truth

The familiar two-species model uses a prey population `x(t)` and predator
population `y(t)`:

```text
change in prey     = prey growth - encounters which remove prey
change in predator = encounters which support predators - predator loss
```

One conventional notation is

```text
dx/dt = alpha*x - beta*x*y
dy/dt = delta*x*y - gamma*y
```

This is a good first example because every term can be argued about in ordinary
language. It is also deliberately crude: it omits limited food, age structure,
space, seasons, other predators and prey, disease, changing behavior, human
harvesting, and measurement error.

## Historical stories are already structured data problems

The Volterra story concerns fish landed at Adriatic ports before, during, and
after the First World War. Reduced fishing was associated with a larger
proportion of predatory fish in the catch. The later classroom-standard
snowshoe-hare and Canada-lynx example commonly uses fur returns, not direct
population counts.

Those distinctions are not footnotes to discard. They change the type of the
observation:

```text
animal_count != pelt_return != market_catch != estimated_abundance
```

A future checked editor should make it difficult to relabel one as another
without an explicit conversion or interpretation step.

## What should become explicit

At minimum:

- species or species group;
- observation time and place;
- observation kind;
- unit and scale;
- source;
- missing-value and rejection policy;
- model variant and parameter set;
- whether the desired product is coefficients, predictions, or residuals.

## Dimensional checks

If `x` and `y` are population counts and time is measured in days, the right
side of each differential equation must have units of population per day. That
forces different roles on the four parameters:

- `alpha` and `gamma`: inverse time;
- `beta`: inverse predator-population per time;
- `delta`: inverse prey-population per time.

This is the kind of error a type system can catch. It cannot decide whether
encounters really occur in proportion to `x*y`.

## First possible stream-editing fixture

Use rows shaped approximately like this:

```text
time,place,species,observation_kind,value,unit,source
```

Then make one small transformation:

1. accept only rows matching the declared schema;
2. select two named species over a shared time domain;
3. align observations by explicit keys;
4. calculate or attach a declared baseline;
5. emit residual rows while retaining the keys, units, source, and baseline
   identity.

The fixture should initially use synthetic data so its oracle is under our
control. Empirical data can follow, with its observation method kept intact.

## Why this example is not the whole repository

The project is not an ecosystem simulator. Predator and prey provide the first
place to see variables, parameters, observation kinds, hidden assumptions, and
competing consumers of an output. The same distinctions recur in temperature
fields, images, industrial sensor streams, and ordinary structured text.

