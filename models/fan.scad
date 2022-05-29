module fan() {
  fan_radius = 60;
  fan_x = fan_radius * 2;
  fan_y = fan_x;
  fan_z = 25;

  difference() {
    cube([fan_x, fan_y, fan_z]);
    translate([fan_radius,fan_radius, -1])
      cylinder(fan_z + 2,fan_radius - 1.7,fan_radius - 1.7);
  }

  translate([fan_radius,fan_radius, -1])
    cylinder(fan_z + 2,20.5,20.5);

  for(fraction = [1:11]) {
    translate([fan_radius, fan_radius, 0])
      rotate([0,0,360/(11/fraction)])
        cube([fan_radius, 5, 5]);
  }
}
