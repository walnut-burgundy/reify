# MBTI: geometry, typing, and institutional reification

These are working notes for a later, more careful treatment.  The purpose here
is to preserve an example and the questions it raises, not to pretend that the
psychometric or historical case has already been settled.

The MBTI belongs in `reify` because it is a particularly clear case where a
small representational scheme can acquire vivid names, biographies, and
institutional authority.  The mathematical simplification is easy to see; the
interesting question is what happens when people begin to treat the
simplification as a discovered ontology rather than a chosen coordinate system.

## The old blog argument: first see the box

Several old posts make essentially the same geometric criticism from different
angles.

- **Emotion Zero**:
  https://isomorphismes.tumblr.com/post/21037878642/emotional-zero-vector-size-distance-addition
- **Geometry of the Nielsen PRIZM**:
  https://isomorphismes.wordpress.com/2012/11/13/nielsen-prizm/
- **People As Response Functions**:
  https://isomorphismes.wordpress.com/2012/11/28/people-as-response-functions/

The core observation was that MBTI can be viewed structurally as a
four-dimensional reduction of personality.  One post contrasts another
classification scheme with MBTI's four sliding scales and writes the latter as

    [0,1]^4

That notation should be understood as a geometric reading of the architecture,
not as a claim that the official MBTI scoring manual literally defines four
uniform real coordinates on that cube.  The important structural facts are four
axes and a later classification into sixteen combinations of poles.

Once the representation is seen as a four-dimensional box, questions that the
four-letter names tend to hide become ordinary modelling questions:

- Why these four coordinates?
- Why should they be independent or orthogonal?
- Why should the relevant geometry be rectangular?
- What metric, if any, represents similarity between people?
- What justifies the thresholds that turn continuous scores into types?
- How stable are coordinates through time and across situations?
- Are the axes linear, ordered, symmetric, or even globally meaningful?

The point is not that four-dimensional spaces are inherently bad.  The opposite
is closer to the argument: becoming comfortable with four-dimensional spaces
makes the construction look less mysterious.  It becomes one proposed low-
dimensional coordinate system among many possible ones, and its assumptions can
be inspected rather than absorbed through the personality labels.

### People as response functions, not fixed points

The later "People As Response Functions" post pushes the criticism in a more
dynamical direction.  Even an intuitively plausible axis such as
introversion/extraversion need not be a constant property of a person.  A
person's behaviour can depend on environment, history, relationships, recent
experience and other inputs.

Instead of representing a person only as a static point

    person -> coordinates

one can at least ask whether the better object is closer to

    circumstances, history -> response

or a trajectory through a state space.  That does not by itself give a good
psychological model, but it exposes how much structure is assumed when a
context-dependent process is compressed to one durable type label.

## Merve Emre and the institutional history

Merve Emre, *The Personality Brokers: The Strange History of Myers-Briggs and
the Birth of Personality Testing* (2018; published in the UK as *What's Your
Type?*), is useful here because the history is not merely a debate about whether
a quiz describes an individual accurately.  It follows the test as an
institutional technology.

Emre was an Associate Professor of English Literature and Fellow at Worcester
College, Oxford when the book appeared.  She left Oxford in 2023 and is now at
Wesleyan University.

Useful starting points:

- Author book page:
  https://www.merveemre.com/the-personality-brokers
- Author biography:
  https://www.merveemre.com/about
- Interview discussing workplace use and her own experience taking the MBTI at
  Bain:
  https://longreads.com/2018/09/17/qa-merve-emre-author-of-the-personality-brokers/

Emre's history is especially relevant to `reify` because the categories were
not confined to private self-description.  Employers and managers have used
personality typing for hiring processes, placement, team composition,
management and employee development.  The exact role of MBTI in any hiring
or firing decision needs to be documented case by case; this note should not
turn "used in a hiring process" into the stronger claim "the four-letter type
alone determined the job."

That qualification does not weaken the main point.  A classification acquires a
different significance once an institution can attach opportunity, status,
work assignments or expectations to it.  The object being reified is no longer
only a story a person tells about themself.  It can become an input to decisions
made by other people with power over them.

## Money at stake is not a validation theorem

A recurring mistake is to treat institutional adoption as evidence that a model
must be sound:

    a large firm paid for it
    therefore somebody serious checked it
    therefore it probably works

None of those implications is automatic.  Organizations can standardize a bad
measurement for many of the same reasons individuals can: convenience,
legibility, fashion, authority, vendor relationships, imitation, or the simple
administrative usefulness of putting complicated people into a small number of
boxes.

This is one reason the MBTI is a more useful pseudoscience case for these notes
than astrology-as-entertainment.  The working claim is not that astrology can
never harm anyone.  It is that a weak or false classification becomes more
important to scrutinize when an institution uses it to allocate real
opportunities or to justify decisions about people.

So the interesting question is not merely

    is this belief scientifically respectable?

but also

    what decisions is this representation allowed to license?

The latter is a central `reify` question.

This section is a **working thesis**.  Before calling particular present-day
uses pseudoscientific in a finished treatment, the repository should separately
check psychometric validity, reliability, predictive claims, the actual
institutional use being discussed, and the evidence for consequences.

## Keep the Gottman case separate

The nearby notes on Gottman, Swanson and Murray are not being classified here as
pseudoscience.  Their 1999 marital-interaction paper is an empirical modelling
claim that still needs a careful reading on its own terms.

That case is interesting precisely because it may let us ask finer questions
than "science or pseudoscience": what was observed, how was it coded, which
model was chosen, what was fitted, what predicted out of sample, what causal
interpretation was attached later, and which intervention claims were actually
tested?

Do not use the MBTI argument as a shortcut around that reading.

## A possible pedagogical progression for `reify`

The examples can eventually form a progression from cases where the semantics
are nearly transparent to cases where the mapping between mathematics and the
world is itself the hard problem.

1. **Foxes and chickens / predator-prey toy cases.**  Very small equations and
   explicit meanings.  These are close to ground-truth fixtures for the basic
   machinery: can the system preserve the relation while changing the names or
   representation?
2. **A familiar chaotic-attractor story.**  A recognizable example in which a
   tiny deterministic rule produces geometry and behaviour that are already
   less obvious from the equations.
3. **Gresham's climate pipe apparatus.**  A physical reification whose mapping
   is deliberately explicit: levels, storage, conductance and flow stand for
   physical quantities and the analogue evolves by its own dynamics.
4. **Strogatz's Romeo and Juliet.**  A deliberately named pedagogical toy where
   the story helps one reason about an ODE but is not offered as psychological
   measurement.
5. **MBTI.**  A low-dimensional human classification whose coordinates and
   thresholds can begin to look like properties of people themselves, and whose
   categories have been given institutional uses.
6. **Gottman / Murray marital dynamics.**  A genuinely empirical modelling
   attempt, useful later for asking exactly which inferential steps are licensed
   by observation, fitting and prediction.

The eventual lesson should be more precise than "models are bad" or "all
simplification is pseudoscience."  A useful checklist is closer to:

- What mathematical structure did we choose?
- Which parts are merely names or coordinates?
- What observations identify the mapping to the world?
- Which invariances, metrics, thresholds or causal meanings are actually
  supported?
- How sensitive are conclusions to another equally plausible representation?
- What prediction has been tested outside the construction data?
- What action or institutional decision is being justified by the model?

## Questions to return to

For a serious MBTI pass, collect evidence rather than relying on the familiarity
of the criticism:

- score distributions on each axis and what dichotomization discards;
- test-retest reliability, especially movement across a type threshold;
- construct and predictive validity;
- whether the four-factor geometry is supported rather than imposed;
- comparisons with Big Five / Five-Factor models and other continuous models;
- exactly how MBTI has been used in hiring, placement, promotion, team building
  and employee development, separating documented practices from anecdotes;
- professional or legal guidance on using personality instruments for personnel
  selection;
- evidence of concrete harms or opportunity costs from institutional use;
- what changes mathematically if people are represented as trajectories or
  response functions instead of static points.

The point of saving the example now is to make those later questions visible.
