// WallKnob-C6 Rev A - printable knob for common 6 mm D-shaft EC11
$fn=120;
knob_d=30;
knob_h=14;
bore_d=6.15;
shaft_flat=4.5;
bore_depth=11.5;

module d_bore(h){
  intersection(){
    cylinder(d=bore_d,h=h);
    translate([-bore_d,-bore_d,0]) cube([2*bore_d, bore_d+shaft_flat, h]);
  }
}

difference(){
  union(){
    cylinder(d=knob_d,h=knob_h);
    for(a=[0:15:345]) rotate([0,0,a]) translate([knob_d/2-0.4,0,knob_h/2]) cube([0.8,1.2,knob_h],center=true);
  }
  translate([0,0,-0.1]) d_bore(bore_depth+0.1);
  translate([0,knob_d/2-4,knob_h-0.6]) cylinder(d=2.2,h=0.8);
}
