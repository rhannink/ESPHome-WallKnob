// WallKnob-C6 Rev A - PCB carrier for Ø58 mm board
// Supports PCB at 3 points, matching Rev A mounting holes (radius 24 mm, 120 degrees)
$fn=96;
outer_d=66;
inner_d=58.6;
carrier_h=3.0;
ear_r=4.5;
hole_d=2.8;
mount_r=24;

module ear(a){
  rotate([0,0,a]) translate([mount_r,0,0]) cylinder(r=ear_r,h=carrier_h);
}

difference(){
  union(){
    difference(){
      cylinder(d=outer_d,h=carrier_h);
      translate([0,0,-0.1]) cylinder(d=inner_d,h=carrier_h+0.2);
    }
    ear(-90); ear(30); ear(150);
  }
  for(a=[-90,30,150])
    rotate([0,0,a]) translate([mount_r,0,-0.1]) cylinder(d=hole_d,h=carrier_h+0.2);
}
