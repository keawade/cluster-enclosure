screw_hole_radius = 4/2;

difference() {
  cube([170,100,2.5]);

  translate([4.4,47,-1])
    cylinder(5,screw_hole_radius,screw_hole_radius);

  translate([170-4.4,47,-1])
    cylinder(5,2,2);

  translate([100,40,-1]) {
    translate([(40-27)/2,-48/2,0])
    cube([27,48,5]);

    for (x_coord = [0, 40]) {
      translate([x_coord,0,0])
        cylinder(5,screw_hole_radius,screw_hole_radius);
    }
  }
}
