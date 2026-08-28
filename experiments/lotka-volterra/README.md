# Lotka-Volterra reification experiment

This is the classic Lotka-Volterra predator-prey system. It is the example that
was being referred to as the "Lyapunov" experiment in conversation; the intended
name is Lotka-Volterra.

The baseline is adapted from Stephen Wilkerson's *Predator-Prey Model* in the
Wolfram Demonstrations Project. Wolfram publishes that Demonstration and its
source notebook as open content under CC BY-NC-SA.

- Demonstration: https://demonstrations.wolfram.com/PredatorPreyModel/
- Wolfram's copied notebook view: https://www.wolframcloud.com/obj/8f3ac6d3-a67d-482e-bc04-1c2ba67929cc?src=CloudBasicCopiedContent
- Wolfram documentation with the numerical parameter example used here:
  https://reference.wolfram.com/language/ref/DStabilityConditions.html

## Model

Let `x` be rabbits and `y` be foxes.

```text
dx/dt = a*x - alpha*x*y
dy/dt = -c*y + gamma*x*y
```

The runnable fixture uses Wolfram's documented example values:

```text
a     = 1
alpha = 1/2
c     = 3/4
gamma = 1/4
x(0)  = 2
y(0)  = 1
```

so the equations become

```text
x' = x * (1 - y/2)
y' = y * (-3/4 + x/4)
```

The Python port deliberately uses a plain RK4 loop instead of hiding the model
behind a solver library. The equations are therefore visible as ordinary code.

Running

```text
python lotka_volterra.py
```

produces:

```text
lotka_volterra_timeseries.png
lotka_volterra_phase.png
lotka_volterra_phase.gif
```

For the baseline run, the numerical ranges are approximately:

```text
rabbits: 1.1737 .. 6.1353
foxes:   0.9021 .. 3.7537
```

## Why this is a Reify fixture

There are several linked representations of the same mathematical object:

```text
prey role      <-> rabbit name <-> x variable <-> x-axis / legend text
predator role  <-> fox name    <-> y variable <-> y-axis / legend text
```

and the equations attach different parameter roles to predator and prey.

A transformation such as

```text
rabbits -> fish
foxes   -> sharks
```

should therefore be able to propagate through prose, labels, names, generated
artifacts, and any typed role declarations while preserving the numerical orbit
when the change is only a reinterpretation.

A transformation such as

```text
foxes -> sharks
```

without deciding what becomes of the prey role is intentionally a different
question. Reify should be able to represent that the word substitution is easy
while the semantic transformation is incomplete.

That makes this a better fixture than a single text file: there are observable
side effects of a coherent or incoherent transformation.

## What this does not claim

The model is not being certified as a faithful ecological description. The
Wolfram explanation itself starts from simplifying assumptions: exponential prey
growth without predators, exponential predator decline without prey, and an
encounter term proportional to the product of the two populations.

The experiment is about transforming a mathematical model and its
interpretation without silently changing what the program computes.

## License / attribution

The Wolfram Demonstrations source is CC BY-NC-SA. This experiment is an adapted
implementation and retains that attribution. The generated PNG/GIF files are
produced from this implementation rather than copied from Wolfram's rendered
movie or snapshots.
