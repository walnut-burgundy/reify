# Main terms, tilted planes, and residuals

## The remainder may be the product

For observations `y` and a chosen main term `m`:

```text
residual = y - m
```

The main term is not automatically "the truth." It may be a deliberately simple
background whose purpose is to expose what remains.

This produces at least two distinct jobs:

| Consumer | Primary product | Main obligation |
| --- | --- | --- |
| coefficient consumer | coefficients of `m` | justify the model, fit, interpretation, and uncertainty |
| residual consumer | `y - m` | preserve alignment and units; record the baseline well enough to reproduce and compare the remainder |

The residual consumer may tolerate several reasonable baselines. That does not
make the baseline irrelevant: different subtraction choices create different
residuals.

## A line over a sequence

Given values `y(t)`, choose a baseline

```text
m(t) = a + b*t
```

The coefficient consumer may ask whether `b` estimates a physically meaningful
rate. The residual consumer may simply want to remove an obvious drift before
looking for periodicity, abrupt changes, or local structure.

Those uses should have different declarations rather than sharing an unnamed
"linear fit" command.

## A tilted plane over a scalar field

For a two-dimensional field `z(x,y)`, use

```text
m(x,y) = a + b*x + c*y
r(x,y) = z(x,y) - m(x,y)
```

Numerically this is simple. Meaningfully it requires at least:

- the same spatial domain and cell alignment for `z` and `m`;
- compatible units;
- an explicit coordinate system;
- a policy for missing or masked cells;
- a named method for choosing `a`, `b`, and `c`;
- retained provenance connecting every residual cell to its observation and
  baseline.

The output residual is signed even when the original observations are
nonnegative. Its type should say so.

## Climate as a warning about an unreified question

"How much did the climate warm?" does not identify a single computation. A
serious declaration has to choose the interval, spatial and temporal weighting,
sensor products, coverage and missing-data policy, uncertainty treatment, and
which quantity is meant by warming. A causal question about a forcing adds more
choices and is not equivalent to estimating a time trend.

Chlorofluorocarbons illustrate why a straight-line story may be inadequate:
their concentrations changed under policy, they are greenhouse gases, and their
role in stratospheric ozone is related to but not identical with the question of
surface warming. The lesson for this repository is not a particular climate
model. It is that a short English request can hide several incompatible target
quantities.

## Relation to Barry Mazur's essays

Two essays are nearby but should not be collapsed into one:

- *What Is... a Motive?* discusses the search for a common underlying object
  whose different realizations give different cohomology theories.
- *Finding Meaning in Error Terms* directly studies cases where subtracting a
  main term exposes structured, mathematically interesting error terms.

The second is the closer reference for treating residuals as objects worth
consuming. The first supports a broader reification instinct: do not identify
an underlying object with only one of the ways it is realized.

