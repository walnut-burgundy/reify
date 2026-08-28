# Teaching progression: situation, numbers, then checked transformation

The first job is not to advertise dependent types. It is to give a person a
reason to perform an operation and enough shared reality to notice and repair a
mistake.

## 1. Start in the world

Use a predator-prey story because the nouns already suggest possible
relationships: prey reproduce, predators die without food, and encounters may
decrease one population while increasing the other.

Before any equations, ask:

- What was actually observed: animals, pelts, fish landed at a port, or an
  estimate?
- At what times and places?
- Which animals were grouped together?
- Which causes have been omitted?
- What would count as a useful output?

This makes the model an argued construction rather than a fact delivered from
the back of a book.

## 2. Reify the question

Turn the answers into data rather than leaving them in an adverb:

```text
observation_kind = pelt_returns
time_step = one_year
missing_value_policy = reject_row
baseline = lotka_volterra(parameters = ...)
consumer = residual_series
```

That sketch is not proposed language syntax. It shows which choices a future
language must be capable of representing.

## 3. Move to numbers

Now remove the story temporarily. Work with a table, grid, or Sudoku-like page
of numbers. A learner can select entries, apply a weighting, subtract a line or
plane, and compare results with other people.

The value of this stage is not employment propaganda or a claim that every
number puzzle is realistic. It is a small shared world with stable rules. People
can play, discover patterns, disagree locally, and repair errors without needing
an authority to announce every answer.

## 4. Return to meaning

Put the labels, units, observation method, and modeling choices back. Ask which
number operations remain meaningful.

A subtraction that was legal on an unlabelled grid may now be rejected because
the arrays cover different dates, use different spatial cells, or measure
different units. Conversely, two scientifically different procedures may have
the same numeric shape and therefore require an explicit tag to distinguish
them.

## 5. Add checked transformations

Only at this point does dependent typing earn its place. A transformation can
consume not merely text but text accompanied by a description of its structure,
and it can return output accompanied by a checked statement about what was
preserved or changed.

The small initial target should be less than "verify science." It might be:

> Given rows carrying a declared schema and unit labels, select a named field,
> subtract a baseline aligned to the same observation keys, and emit residual
> rows which preserve those keys and record the baseline choice.

That is close enough to stream editing to guide implementation, but rich enough
to expose why ordinary untyped substitution is sometimes inadequate.

