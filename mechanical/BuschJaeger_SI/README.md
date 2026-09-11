# WallKnob-C6 Rev A — Busch-Jaeger Reflex SI mechanical parts

These files form the first printable mechanical set for the WallKnob-C6.

## Parts

- `si_centerplate.scad/.stl` — 54 x 54 mm center plate for a Reflex SI single frame, with centered EC11 shaft opening.
- `pcb_carrier.scad/.stl` — carrier ring for the Ø58 mm Rev A PCB, with three mounting points.
- `ec11_knob.scad/.stl` — 30 mm knob for a common 6 mm D-shaft EC11 encoder.
- `assembly_preview.scad` — visual reference only; contains an 81 x 81 mm nominal frame placeholder.

## Known dimensions

Busch-Jaeger documentation specifies a 54 x 54 mm cover and 81 x 81 mm single frame for Reflex SI. The design uses those nominal dimensions as its interface envelope.

## Important before final print

Busch-Jaeger has several SI families/cover mechanisms. The outer visible dimensions are documented, but the exact retaining geometry behind the center plate depends on the physical part. Therefore Rev A currently uses a simple center plate geometry and separate PCB carrier. Measure your actual Reflex SI frame/cover and tune the OpenSCAD parameters before treating this as production-final.

Recommended first print: PETG, 0.20 mm layers, 3-4 walls. Print the center plate face-down only if your build plate gives a suitable visible finish; otherwise face-up with a fine top surface.
