// WallKnob-C6 Rev A - Busch-Jaeger Reflex SI compatible center plate
// Nominal Reflex SI cover size: 54 x 54 mm. Verify against your physical frame.
$fn=96;
plate=54;
th=2.2;
corner_r=2.4;
shaft_hole=7.2;
recess_d=17.0;
recess_depth=0.7;

module rounded_square(size,r,h){
  linear_extrude(height=h)
    offset(r=r) square([size-2*r,size-2*r],center=true);
}

difference(){
  rounded_square(plate,corner_r,th);
  translate([0,0,-0.1]) cylinder(d=shaft_hole,h=th+0.2);
  translate([0,0,th-recess_depth]) cylinder(d=recess_d,h=recess_depth+0.1);
}
