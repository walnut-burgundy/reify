# Dynamical systems: books, toy models, and over-reification

These notes belong next to the Gresham net-zero / pipe-model notes because both
are about attaching concrete interpretations to small dynamical systems.  They
also illustrate the corresponding danger: once a useful low-dimensional model
has acquired vivid names, it is easy to forget which claims came from the
mathematics and which came from the interpretation.

## Differential-equations / dynamical-systems books being remembered

The two strongest identifications are:

1. Steven H. Strogatz, *Nonlinear Dynamics and Chaos*.
2. Morris W. Hirsch, Stephen Smale, and Robert L. Devaney,
   *Differential Equations, Dynamical Systems, and an Introduction to Chaos*.

The remembered "Morris Hirsch" and "Smale" point to the second book.  An older
ancestor is Hirsch and Smale's *Differential Equations, Dynamical Systems, and
Linear Algebra* (1974).

Two other plausible books from the same kind of shelf are:

- V. I. Arnold, *Ordinary Differential Equations*.
- Lawrence Perko, *Differential Equations and Dynamical Systems*.

The first two are much stronger identifications than the latter two.  This note
should not be read as a claim that all four were actually purchased.

## Strogatz's Romeo and Juliet model

Steven H. Strogatz, "Love Affairs and Differential Equations," *Mathematics
Magazine* 61(1), 1988, pp. 35-35.

- DOI: https://doi.org/10.1080/0025570X.1988.11977342

The point of the short note is pedagogical: use a deliberately amusing story
about Romeo's and Juliet's changing feelings to teach standard material about
coupled ordinary differential equations.  The variables stand for feelings,
and choices of signs and coefficients give different comic relationship
patterns.

This is a toy model in the important sense.  It is an interpretation wrapped
around a small ODE system so students can reason about phase portraits,
stability, oscillation, and coupled linear dynamics.  It is not presented as a
scientific measurement model of human relationships.

The example later appears in Strogatz's *Nonlinear Dynamics and Chaos* under the
"Love Affairs" discussion.

## Gottman, Swanson, and Murray: a different model

John M. Gottman, Catherine Swanson, and James D. Murray, "The Mathematics of
Marital Conflict: Dynamic Mathematical Nonlinear Modeling of Newlywed Marital
Interaction," *Journal of Family Psychology* 13(1), 1999, pp. 3-19.

- DOI: https://doi.org/10.1037/0893-3200.13.1.3
- Author-hosted copy:
  https://www.johngottman.net/wp-content/uploads/2011/05/The-Mathematics-of-Marital-Conflict-Dynamic-Mathematical-Nonlinear-Modeling-of-Newlywed-Marital-Interaction.pdf

Do **not** describe this as Gottman "using the Strogatz Romeo-Juliet model."
That would collapse two distinct things.

The 1999 work builds a separate nonlinear **difference-equation** model from
coded observations of interactions between newlywed couples.  Its parameters
include quantities interpreted as uninfluenced steady states, emotional
inertia, influenced steady states, and influence functions.  The paper reports
that parameters of this fitted model predicted divorce in its newlywed sample.

That is already a much more empirical project than Strogatz's teaching joke,
but the following claims must still be kept separate:

1. A coding scheme extracts repeatable numerical summaries from observed
   interactions.
2. A chosen dynamical model can be fit to those summaries.
3. Fitted parameters predict an outcome in a particular sample or prospective
   cohort.
4. The mathematical state variables and parameters correspond to real causal
   psychological mechanisms.
5. Intervening on the quantities suggested by the model changes relationship
   outcomes.
6. A therapy built from those ideas has replicated clinically important effects
   under independent testing.

Success at an earlier rung does not establish the later rungs automatically.
In particular, writing nonlinear equations, fitting them to coded data, and
obtaining prediction does not by itself prove the proposed mechanism and does
not by itself establish the efficacy of a therapy.

This distinction is worth preserving because the mathematical language can make
the inferential jump look smaller than it is.  The relevant questions include
coding reliability, parameter identifiability, model selection, prospective
versus post-hoc prediction, calibration and base rates, out-of-sample testing,
independent replication, and randomized or otherwise credible intervention
studies.

This paper remains an **open reading target** for this repository.  Nothing in
these notes classifies it as pseudoscience.  A later pass should read the model,
data, fitting procedure, prediction claims, causal interpretation and therapy
claims separately rather than deciding the case by association with other
human-classification examples.

## Adjacent example: MBTI and institutional reification

See [MBTI: geometry, typing, and institutional reification](mbti-reification-and-institutional-power.md).

That example preserves an older geometric criticism of MBTI as a four-axis
rectangular reduction of personality, together with the more dynamical idea of
people as response functions rather than fixed points.  Merve Emre's history of
the MBTI adds the institutional side: a representational scheme can cease to be
merely a private story about personality when employers and other institutions
use its categories in decisions about people.

The MBTI note therefore asks a question that is also relevant here: even when a
mathematical representation is convenient and legible, what evidence licenses
turning its coordinates, thresholds or fitted parameters into properties of the
world -- and what additional evidence licenses acting on them?

## Connection to the Gresham pipe models

Myles Allen's Gresham apparatus deliberately makes a climate model physical:
reservoir heights, flows, conductances, and pumps obey relations corresponding
to temperature, heat storage, feedback, transport, and forcing.  The physical
analogue is useful precisely because the mapping between model quantities and
physical quantities is explicit and can be interrogated.

The love-model and MBTI examples make useful contrasting companions.  Giving a
variable a vivid human name can make the equation easier to think with, but the
name does not validate the mapping.  The distinction between

    useful mathematical structure

and

    empirically established interpretation

is therefore part of the reification problem itself.

The climate, personality-classification and relationship examples can
eventually be merged into one larger set of notes about when a reification
clarifies a model and when it risks smuggling an interpretation into the
mathematics -- especially when the interpretation is later allowed to justify
real decisions.
