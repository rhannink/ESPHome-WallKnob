// Visual-only assembly preview for WallKnob-C6 + Reflex SI front
use <si_centerplate.scad>
use <pcb_carrier.scad>

module frame_preview(){
  difference(){
    color("white") linear_extrude(6) offset(r=3) square([75,75],center=true);
    translate([0,0,-0.1]) linear_extrude(6.2) offset(r=2.5) square([54.8,54.8],center=true);
  }
}
frame_preview();
translate([0,0,1.5]) color("ivory") rounded_square(54,2.4,2.2);
translate([0,0,-5]) color("gray") cylinder(d=58,h=1.6);
translate([0,0,-9]) color("orange") difference(){cylinder(d=66,h=3); cylinder(d=58.6,h=3.2);}
