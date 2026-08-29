# Gresham College: climate equations made physical

These notes are based on Myles Allen's Gresham College lectures and the
official transcripts. They are summaries, not copies of the transcripts.

The especially useful idea for `reify` is that Allen does not merely describe
a mathematical climate model. He builds a physical analogue from fluid,
tubes, reservoirs, restrictions and pumps so that the analogue itself obeys
the same small system of equations. It is a literal reification of the
mathematics.

## Why the actual pumps matter

The fact that Allen uses **actual physical pumps, pipes and reservoirs** is not
incidental decoration. It is the pedagogical point.

A differential equation may compress a physical relationship very efficiently,
but reading that compression requires substantial mathematical preparation.
Even after years of study, useful interpretations can remain scattered across
specialist literatures written for entirely different purposes. A reader who
only needs one idea may encounter it buried inside a treatment of PDEs,
topology, homology, mathematical physics, or some other subject they never
wanted to learn as a whole.

The pump apparatus reverses that order. A person can first see water being
pumped, stored and transferred. Height, flow, storage and delay already mean
something before any symbols are introduced. The equations can then describe a
relationship that has already become intelligible rather than serving as the
price of admission to it.

That matters especially for climate. Climate change affects people regardless
of mathematical education, so an immediately legible physical story is not a
'dumbed down' substitute for the mathematics. It is a way of exposing the
structure before asking anyone to learn the notation used to compress it.

## "Bijections across domains" as a pedagogical challenge

In these notes, **"bijections across domains" is deliberately not a claim of a
formal mathematical bijection**. It is a provocative name for the act of
carrying a relationship into another domain where a person may be able to see
or manipulate it more directly.

For example:

- radiative forcing -> pump input,
- temperature -> fluid height,
- heat capacity -> reservoir capacity,
- feedback / transport coefficient -> restriction or conductance,
- energy transfer -> fluid flow.

The technical word is useful partly because it asks the reader to tolerate a
little abstraction and then check the correspondence themselves. If they draw
it, manipulate it, or write down the equations, they will also discover where
the correspondence is exact and where it is not. That discovery is part of the
lesson rather than a defect to hide.

The larger goal of `reify` is therefore not merely to replace mathematical
words with ordinary words. It is to find another system -- physical, visual,
computational, spatial, biological, etc. -- in which the relationships become
available to intuition, while keeping enough bookkeeping to say exactly what
survives the translation and what does not.

## The Atmospheric Physics Behind Net Zero

Myles Allen, Gresham College, 22 November 2022.

- Video / lecture page:
  https://www.gresham.ac.uk/watch-now/atmospheric-zero
- Official transcript (PDF):
  https://www.gresham.ac.uk/sites/default/files/transcript/2022-11-22-1800_ALLEN-T.pdf

### Summary

Allen starts from the greenhouse effect as an energy-flow problem. Increasing
greenhouse-gas concentration reduces outgoing infrared energy, which is
mathematically equivalent, for the global energy budget, to adding an extra
energy input or forcing `F`.

For a simple equilibrium model he writes the response in the form

    F = λ T

where `T` is the increase in global mean surface temperature above the
pre-industrial level and `λ` measures how efficiently a warmer Earth sheds
additional energy to space.

He then makes the equation physical. Extra fluid flow stands for radiative
forcing, fluid height stands for temperature, and the openness of an outlet
pipe stands for the climate feedback parameter. The fluid system therefore
performs the same relation as the equation. Allen emphasizes that a climate
model is fundamentally a set of equations; a digital computer is only one way
of making those equations evolve.

A major conceptual point is the distinction between equilibrium climate
sensitivity and the question climate policy actually needs answered. Holding a
new greenhouse-gas concentration forever asks for the eventual equilibrium
warming. But the climate system is not normally in equilibrium, and the long
adjustment time of the ocean makes the equilibrium response difficult to infer
directly. This motivates looking at transient dynamics instead of treating a
single equilibrium sensitivity as the whole problem.

### Reification connection

The pump / pipe / fluid-level apparatus gives a clean example of substituting a
physical system for symbols while preserving the relation between the
quantities. `F`, `T`, and `λ` acquire visible mechanical counterparts rather
than merely new names.

This lecture is also a useful warning about terminology for this branch. Full
climate models contain spatial fluid and heat equations and therefore PDEs,
but Allen's tabletop model deliberately collapses most spatial structure into
a few aggregate state variables. The tabletop equations are therefore a
low-dimensional dynamical reduction of the climate problem, not themselves a
full atmospheric PDE solver.

## The Ocean Physics Behind Net Zero

Myles Allen, Gresham College, 31 January 2023.

- Video / lecture page:
  https://www.gresham.ac.uk/watch-now/ocean-zero
- Official transcript (PDF):
  https://www.gresham.ac.uk/sites/default/files/transcript/2023-01-31-1800_Allen-T.pdf

### Summary

The second lecture adds the deep ocean as another reservoir. The near-surface
climate has relatively small heat capacity, while the deep ocean has enormous
heat capacity and adjusts on century-scale times. Allen represents those two
parts of the climate system by a narrow fluid tube and a much wider tube joined
by another restricted flow path.

If the deep ocean were effectively an infinite cold reservoir, the additional
energy forcing could escape both to space and into the ocean. In the pipe
analogue the corresponding relation becomes

    F = (λ + γ) T

where `γ` represents the efficiency of transporting excess surface energy into
the deep ocean. This explains why observed transient warming can be smaller
than the eventual equilibrium warming for the same forcing.

The important step is then to stop treating the deep ocean as infinite. Its
state changes slowly, so the surface response contains both a fast response to
changes in forcing and a slow accumulated response while a positive energy
imbalance persists. Allen summarizes the decade-to-century behaviour with a
relation of the form

    ΔT = κ_F ΔF + ρ_F F̄ Δt

The first term is the relatively fast temperature response to a change in
forcing. The second is continued warming from the average positive energy
imbalance while heat is still accumulating in the system, principally in the
ocean.

This gives the central net-zero point. Stabilizing greenhouse-gas
concentrations does not in general make `ΔT` immediately zero, because the
second term can remain positive while the ocean is still adjusting. To halt
warming on these timescales, forcing has to decline enough for the negative
fast-response term to balance the continued slow adjustment. In the physical
model this is visible: the pump rate can fall while the deep reservoir is still
filling, with the surface-tube level remaining approximately fixed.

Allen explicitly describes the apparatus as an example of doing coupled
differential equations with fluid in pipes. The thermohaline circulation and
cold deep ocean supply the physical origin of the long adjustment timescale
represented by the large reservoir.

### Reification connection

This is the stronger example for this repository. The apparatus does more than
illustrate a static correspondence: it computes through its own dynamics.
Storage corresponds to heat capacity, pressure/height differences correspond
to temperature differences, conductances correspond to feedback or transport
coefficients, and flow corresponds to energy transfer. Coupling the reservoirs
produces coupled differential behaviour automatically.

For later PDE work, the natural question is which spatial PDE structures can
be reduced to networks of reservoirs and fluxes without destroying the
feature we care about, and conversely when a lumped pipe model hides something
essential such as advection, diffusion, geometry, boundary conditions or
spatially varying coefficients.

## Ocean flow as an evocative three-dimensional story

Allen's discussion also supplies a much richer physical object than the small
pipe model: the ocean itself. Temperature, salinity, density, depth,
circulation, and observations at different depths are all physically relevant
information that should not be thrown away merely because they are not pieces
of mathematical notation.

The ocean is a **three-dimensional fluid domain with bounded depth**. The
vertical coordinate does not extend indefinitely: schematically it lies in a
finite interval between the free surface and the seafloor. Horizontally the
water occupies a complicated region around the Earth, interrupted and bounded
by continents and islands.

This suggests a useful ladder of abstractions:

1. **Full physical story:** a moving three-dimensional body of water with
   temperature, salinity, density, bathymetry and forcing.
2. **Three-dimensional domain:** retain the actual fluid region and ask about
   flow, transport and boundary conditions.
3. **Depth-collapsed picture:** ignore or average the vertical coordinate and
   view the oceans as a water region on the Earth's surface with land removed.
4. **Topology-only picture:** forget distances and most physics and ask only
   what is connected and what kinds of loops survive.
5. **Small reservoir model:** collapse most spatial structure to a few state
   variables and fluxes, as in the tabletop apparatus.

Each step keeps some relationships and destroys others. Recording that loss is
part of reification.

### Possible H0 / H1 lens

At the topology-only level, `H0` and `H1` provide a compact way to ask two of
the most immediate questions:

- `H0`: how many connected water components are there in the chosen
  idealization?
- `H1`: what independent loop-like obstructions remain after land and other
  excluded regions are removed?

It is tempting to say simply that 'the oceans are connected but have holes
where the continents are.' That is a good first picture, but not a literal
homology computation. The answer depends on the exact domain, coastline,
islands, straits, depth cutoff and what has been collapsed. A continent is not
automatically one `H1` generator.

There is, however, a useful mathematical reason the bounded vertical interval
can sometimes be ignored topologically. If an idealized three-dimensional
ocean really were a horizontal water region `X` thickened uniformly by an
interval `I`, so the domain were `X × I`, then `I` is contractible and `X × I`
has the same homotopy type -- hence the same homology -- as `X`. In that special
model, adding finite depth does not create new `H0` or `H1` information.

The real ocean is not literally `X × I`: depth varies, basins close off,
seafloor topography matters, and the horizontal cross-section changes with
depth. So the product picture is an intentionally crude reification, useful
precisely because it makes clear what must be checked before importing a
surface-level `H0/H1` intuition into a three-dimensional flow problem.

## Series

These two lectures belong to Allen's larger Gresham College series *Why Net
Zero?*:

https://www.gresham.ac.uk/watch-now/series/net-zero
