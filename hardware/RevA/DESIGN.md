# WallKnob-C6 Rev A design specification

## Mechanical

| Item | Rev A value |
|---|---|
| PCB | Round, Ø58.0 mm, 1.6 mm FR-4, 2-layer |
| Encoder axis | X=0, Y=0 / exact board center |
| Installation | European flush-mount wall box |
| Maximum target depth | 40 mm from front mounting plane |
| Front system | Busch-Jaeger SI frame/knob via adapter |
| Mounting | 3 × M2.5 holes, 120° apart, nominal radius 25 mm |

The encoder is the mechanical datum. Do not move it to solve routing problems.

## Functional blocks

### Mains input

230 VAC enters on the rear side through a 2-pole terminal. The mains section contains:

1. AC input terminal
2. time-lag fuse / fusible protection footprint
3. IRM-01-3.3 isolated AC/DC module
4. isolated SELV 3.3 V rail

Keep the primary copper region physically separated from SELV. No ground pour may bridge the isolation barrier. Add a routed isolation slot where practical between primary and secondary areas.

### MCU

ESP32-C6-MINI-1, powered directly from the isolated 3.3 V rail. Provide local 100 nF + bulk decoupling near the module supply pins. Keep the antenna end at the PCB edge with copper/component keep-out underneath and in front of the antenna according to the module integration guidance.

### Encoder

EC11 incremental encoder with push switch:

- A → GPIO with pull-up
- B → GPIO with pull-up
- SW → GPIO with pull-up
- common → GND

Place optional RC/debounce footprints close to the MCU/encoder signals. Firmware can provide the main debounce/filtering.

### Status LED

One low-current status LED driven from a GPIO through a series resistor.

### Programming / bring-up

Expose labeled test pads for:

- 3V3
- GND
- UART TX
- UART RX
- EN
- BOOT/GPIO9

These pads are low-voltage only and must remain in the SELV zone.

## Provisional GPIO assignment

The mapping below is intentionally centralized so it can be changed after the first KiCad/ERC pass without changing the functional design.

| Function | GPIO |
|---|---:|
| Encoder A | GPIO2 |
| Encoder B | GPIO3 |
| Encoder switch | GPIO4 |
| Status LED | GPIO5 |
| BOOT | GPIO9 |

GPIO choices must be checked against ESP32-C6 strapping/JTAG/USB constraints before manufacturing.

## PCB zoning

Rear side contains the mains connector, fuse and IRM-01-3.3. Front side contains the EC11, ESP32-C6, LED and low-voltage programming pads.

Use three explicit zones:

- PRIMARY: connector → fuse → IRM primary
- ISOLATION BARRIER: no copper/components except approved module boundary; add slot where feasible
- SELV: IRM secondary → MCU/encoder/LED/test pads

Do not route low-voltage traces through the primary area merely to shorten routing.

## Rev A DFM checks before ordering

- Verify exact IRM-01-3.3 footprint against current Mean Well drawing
- Verify exact EC11 variant body, shaft length and locating tabs
- Verify Busch-Jaeger SI adapter dimensions with physical parts
- Verify antenna keep-out
- Verify creepage/clearance for the intended installation category and pollution degree
- Verify fuse rating and interrupt capability
- Verify terminal voltage/current rating and wire accessibility
- Verify total assembled depth in a real flush-mount box
- Run ERC and DRC with explicit primary/SELV net classes
- Inspect Gerbers before fabrication
