# Rev A checklist

## Mechanical

- [ ] PCB Ø58.0 mm
- [ ] EC11 shaft exactly centered
- [ ] Three mounting holes checked against adapter
- [ ] Busch-Jaeger SI frame/knob fit checked physically
- [ ] Total installed depth ≤ 40 mm target
- [ ] No rear component collides with wall box or wiring

## Primary / mains

- [ ] IRM-01-3.3 footprint checked against manufacturer drawing
- [ ] Primary and SELV zones visibly separated
- [ ] Required creepage/clearance established from applicable standard
- [ ] Isolation slot added/checked where feasible
- [ ] Fuse type/rating/interrupt capability selected
- [ ] Terminal approved for intended mains wiring
- [ ] No exposed primary copper accessible after assembly

## SELV / MCU

- [ ] ESP32-C6-MINI-1 footprint and antenna orientation checked
- [ ] Antenna copper/component keep-out checked
- [ ] GPIO mapping checked for strapping/debug conflicts
- [ ] 3.3 V decoupling checked
- [ ] Encoder A/B/SW pull-ups checked
- [ ] Programming pads labeled and accessible

## CAD release

- [ ] ERC clean or all exceptions documented
- [ ] DRC clean or all exceptions documented
- [ ] 3D board inspection complete
- [ ] Gerber viewer inspection complete
- [ ] Drill files inspected
- [ ] BOM generated
- [ ] Pick-and-place generated if assembly is outsourced

## First power-up

Do not connect an unverified prototype directly to mains on the bench. First inspect continuity/isolation and power the SELV side from a current-limited isolated 3.3 V supply for MCU/firmware bring-up. Mains-side validation requires appropriate qualified procedures and test equipment.
