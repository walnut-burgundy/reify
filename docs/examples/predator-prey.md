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

This is the Lotka-Volterra predator-prey system. It is easy to mix the name up
with Lyapunov because both occur constantly in differential equations, but the
predator-prey story here is Lotka-Volterra.

This is a good first example because every term can be argued about in ordinary
language. It is also deliberately crude: it omits limited food, age structure,
space, seasons, other predators and prey, disease, changing behavior, human
harvesting, and measurement error.

## From `x` and `y` to deer and wolves

For the editing fixture, write the same equations with conspicuous symbolic
names:

```text
X' = alpha*X - beta*X*Y
Y' = delta*X*Y - gamma*Y
```

Now make one explicit naming decision:

```text
X = deer
Y = wolves
```

The equations become

```text
deer'   = alpha*deer - beta*deer*wolves
wolves' = delta*deer*wolves - gamma*wolves
```

The corresponding story is intentionally simple. When deer are plentiful,
wolves have food and the wolf population can increase. More wolves means more
predation, so the deer population falls. Once deer become scarce, wolves have
less food; wolf numbers then fall. With fewer wolves, predation on deer eases,
so deer can recover. The cycle can then begin again.

Each piece of that story points back to a term in the equations:

```text
alpha*deer         deer increase without wolves
-beta*deer*wolves  encounters remove deer
+delta*deer*wolves encounters support wolves
-gamma*wolves      wolves decline without enough prey
```

This is the path Reify cares about:

```text
differential equation
    -> symbolic variables X and Y
    -> names deer and wolves
    -> ordinary-language interpretation
```

The file `lotka-volterra-variable-names.idric` performs those two substitutions
literally. It also contains a deliberately un-generalized three-variable
version which performs three substitutions in sequence:

```text
X = deer
Y = wolves
Z = cougars
```

That three-variable fixture does not claim that an arbitrary system
`X'=F(X,Y,Z)`, `Y'=G(X,Y,Z)`, `Z'=H(X,Y,Z)` is a particular ecological model.
It only gives us the next mechanical case: name three linked symbolic things
without first designing a general argument parser or substitution language.

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
