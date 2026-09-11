# ESPHome WallKnob-C6

Wall-mounted ESPHome rotary controller based on ESP32-C6, designed for a European flush-mount box and a Busch-Jaeger SI front.

## Rev A — frozen design basis

- Round PCB: **Ø58 mm**, 1.6 mm, 2-layer
- Rotary encoder shaft exactly at PCB geometric center
- **ESP32-C6-MINI-1**
- **EC11** incremental rotary encoder with push switch
- **Mean Well IRM-01-3.3** isolated 230 VAC → 3.3 V supply
- Status LED
- Programming/test pads
- On-board mains fuse
- Three mechanical mounting points
- Target installation depth: **40 mm**
- Busch-Jaeger SI-compatible front using the original frame/knob plus a 3D-printed adapter

Front side: encoder, ESP32-C6, status LED and programming pads.  
Rear side: IRM-01-3.3, fuse and AC input connector.

Rev A deliberately has **no** expansion header, relay, sensor, buzzer, RGB LED or extra buttons.

> **Safety:** This design contains hazardous mains voltage. Creepage/clearance, fusing, enclosure, insulation, PCB material, assembly and final installation must be verified against the applicable standards before connection to 230 VAC.

## Repository layout

- `hardware/` — Rev A mechanical/electrical design data
- `firmware/` — ESPHome configuration
- `docs/` — design notes, bring-up and safety checklist

## Current status

Rev A project baseline is now committed. The next hardware step is schematic capture and PCB routing while preserving the frozen mechanical constraints above.
