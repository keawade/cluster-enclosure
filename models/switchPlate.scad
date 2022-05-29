switch_base_x_y = 40;

union() {
  for(a = [0:4]) {
    translate([0,a * switch_base_x_y,0]) {
      difference() {
        union() {
          cube([switch_base_x_y,switch_base_x_y,2.5]);

          translate([switch_base_x_y/2,switch_base_x_y/2,0])
            cylinder(10,13,13);
        }

        translate([switch_base_x_y/2,switch_base_x_y/2,0]) {
          translate([0,0,-1])
            cylinder(12,10,10);

          rotate(90)
            translate([10+1.5-2,-2.5/2,-1])
              cube([2,2.5,12]);
        }
      }
    }
  }
}

