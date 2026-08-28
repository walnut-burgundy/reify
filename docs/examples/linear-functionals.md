# Linear functionals on a page of numbers

## Begin with what goes in and what comes out

A linear functional consumes a whole vector, table, image, or field and returns
one number. On a finite grid, the most concrete version is a weighted score:

```text
score = sum(weight_at_cell * value_at_cell)
```

Write the weights directly on a copy of the grid. Then the abstract rule is
visible as an ordinary game: multiply corresponding entries and add them.

It is linear because combining inputs combines their scores in the same way:

```text
score(u + v) = score(u) + score(v)
score(c*u)   = c*score(u)
```

## Things the score might mean

- a total, with every weight equal to one;
- a fixed weighted average;
- an area-weighted average of a temperature field;
- a contrast, with positive weights on one region and negative weights on
  another;
- the value of one cell, with weight one there and zero elsewhere;
- a fitted coefficient, when the fitting design and least-squares rule are
  fixed;
- one residual value, under that same fixed fitting rule.

The same arithmetic skeleton has different meanings. The declared weights,
domain, units, and intended consumer are therefore part of the operation, not
documentation to throw away.

## Where basis functions enter

A tilted plane can be built from three simple fields:

```text
constant field: 1
x-ramp:         x
y-ramp:         y

plane = a*1 + b*x + c*y
```

The three displayed fields are basis functions for this small family of
planes. Putting them next to the grid makes the construction much less
mysterious: choose how much of each familiar pattern to combine.

There are then several related but different maps:

- position `(x,y)` to the plane value `a + b*x + c*y`: an affine function of
  position;
- an observed field to the three fitted coefficients: an operator which
  returns three numbers;
- an observed field to just `b`: a linear functional when ordinary
  least-squares design is fixed;
- an observed field to its residual field: a linear operator under that same
  fixed design;
- an observed field to one selected residual cell: a linear functional.

Calling all of these "a linear functional" loses exactly the distinctions this
repository is meant to preserve. Robust fitting, data-dependent rejection, and
many other fitting procedures need not be linear at all.

## A Sudoku-like playground

On a number grid, start with functionals whose weights can be drawn:

- sum this row;
- compare the left and right halves;
- read this cell;
- remove the constant, horizontal-ramp, and vertical-ramp components;
- evaluate the remainder at a chosen cell.

The learner can calculate, compare with another person, and locate a disagreement
in a particular weight or arithmetic step. The real-world story can return
later, when the same weights acquire units and scientific meaning.

## What a checked stream editor could add

A future command could require that:

- values and weights have the same declared shape and keys;
- each multiplication has compatible units;
- the output unit is determined rather than guessed;
- normalization for an average is explicit;
- rejected or missing cells follow a named policy;
- the emitted number retains the functional's identity and input provenance.

That is a modest, concrete use of dependent typing: check the operation that was
declared. It does not decide which functional answers the scientific question.

