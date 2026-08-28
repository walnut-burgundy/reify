# reify

`reify` is an experiment toward a dependently typed stream editor: something
with the small, direct feel of `sed`, but able to state and check more of what a
text transformation assumes and promises.

The repository is still at the problem-framing stage. No language syntax,
implementation language, or type system has been chosen.

## Why "reify"?

Many apparently simple instructions hide choices:

- remove the trend;
- adjust for temperature;
- compare predator and prey populations;
- calculate how much the climate warmed;
- keep the matching records.

Each adverb or ordinary-looking verb can conceal a definition: which sensors,
which time interval, which average, which missing-value policy, which model,
which units, which records, and which meaning of "match". Reification means
turning those hidden choices into explicit values that a program can retain,
display, compare, and sometimes check.

Dependent types are one possible mechanism for checking the result. They are
not a substitute for deciding what the question means.

## First teaching path

The intended progression is:

1. Begin with a situation someone can picture, such as predator and prey
   populations.
2. Write down the observations, variables, assumptions, and operations.
3. Expose the choices that ordinary prose leaves implicit.
4. Move to a number-only playground where people can calculate, make mistakes,
   and correct one another against shared rules.
5. Only then introduce a typed transformation which carries some of those
   rules with the data.

This is not a promise that the first ecological model is true. Its simplicity
is useful precisely because its assumptions and failures can be seen.

## A model can have different consumers

For observations `y` and a baseline or main term `m`, write

```text
y = m + residual
```

One person may consume the coefficients of `m`. They care intensely about how
the fit was defined, whether a coefficient can be interpreted causally, and how
uncertainty was measured.

Another person may mainly consume the residual. The line or plane is scaffolding
used to remove a large, unsurprising component so that smaller structure becomes
visible. This person still needs the baseline recorded, because changing it
changes the residual, but "recover the true coefficient" is not necessarily the
task.

A typed tool should not silently treat those two jobs as the same job.

## What dependent typing might eventually check

- the input has the promised record or grid shape;
- named fields exist and have the expected units;
- a subtraction combines values on the same domain and in the same units;
- a transformation preserves record identity or ordering when it promises to;
- missing and rejected observations are handled by an explicit policy;
- the output satisfies a stated postcondition;
- the output retains the choices and provenance needed to interpret it.

The checker can establish such structural facts. It cannot establish that a
linear trend is the right scientific explanation or that a simplified food web
is an adequate account of an ecosystem.

## Notes

- [Teaching progression](docs/teaching-progression.md)
- [Predator and prey as the first concrete example](docs/examples/predator-prey.md)
- [Linear functionals on a page of numbers](docs/examples/linear-functionals.md)
- [Main terms, planes, and residuals](docs/examples/residuals.md)
- [Reading and redistribution notes](references/README.md)

