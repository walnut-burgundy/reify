# Gresham College: climate equations made physical

These notes are based on Myles Allen's Gresham College lectures and the
official transcripts. They are summaries, not copies of the transcripts.

The especially useful idea for `reify` is that Allen does not merely describe
a mathematical climate model. He builds a physical analogue from fluid,
tubes, reservoirs, restrictions and pumps so that the analogue itself obeys
the same small system of equations. It is a literal reification of the
mathematics.

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

## Series

These two lectures belong to Allen's larger Gresham College series *Why Net
Zero?*:

https://www.gresham.ac.uk/watch-now/series/net-zero
