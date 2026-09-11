WallKnob-C6 Rev A KiCad seed project
Generated 2026-09-11.

Files:
- WallKnob-C6.kicad_pro : KiCad project container
- WallKnob-C6.kicad_pcb : Rev A board outline/component placement and initial nets
- WallKnob-C6.sch       : legacy Eeschema schematic, intentionally used so modern KiCad can import/convert it

IMPORTANT BEFORE FABRICATION:
1. The IRM-01-3.3 footprint in the PCB is explicitly marked VERIFY. Replace/check against the exact current Mean Well mechanical drawing.
2. Check the selected EC11 mechanical variant, shaft length, pin spacing, locating tabs and Busch-Jaeger SI adapter dimensions against physical parts.
3. The ESP32-C6-MINI-1 board representation is a routing/mechanical seed, not a manufacturer-verified production footprint. Replace/check pin numbering and antenna keep-out using the exact Espressif land pattern.
4. Determine required mains creepage/clearance and fuse specification from the applicable standards and actual installation category. The displayed isolation barrier is a design aid, not a compliance claim.
5. Run ERC/DRC after converting the schematic in KiCad and before ordering boards.
