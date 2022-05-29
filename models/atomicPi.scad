// Units: mm

include<functions.scad>

module atomicPi() {
  board_x = 100;
  board_y = 130;
  board_z = 1.6;

  cube([board_x, board_y, board_z]);
  
  // Posts
  post_height = 35;
  translate([3.5, 3.5, board_z]) {
    linear_extrude(post_height) {
      regular_polygon(6,  5.6/2);
    }
  }
  translate([board_x-3.5, 3.5, board_z]) {
    linear_extrude(post_height) {
      regular_polygon(6,  5.6/2);
    }
  }
  translate([3.5, board_y-3.5, board_z]) {
    linear_extrude(post_height) {
      regular_polygon(6,  5.6/2);
    }
  }
  translate([board_x-3.5, board_y-3.5, board_z]) {
    linear_extrude(post_height) {
      regular_polygon(6,  5.6/2);
    }
  }
  
  // Heatsink
  translate([18, 43.5, board_z]) {
    difference() {
      cube([64.7, 71, 34.8-board_z]);
      translate([1.45, -1, 6]) {//4.6
        for (a = [0:13]) {
          translate([a * 4.53, 0, 0]) {
            cube([3, 73, 34]);
          }
        }
      }
    }
  }
  
  // RJ-45
  translate([-1.2, 7.8, board_z]) {
    cube([22, 16, 13.6]);
  }
  
  // USB
  translate([-1.2, 29.8, board_z]) {
    cube([15.9, 13, 5.4]);
  }
  
  // HDMI
  translate([board_x-11.6, board_y-24.6, board_z]) {
    cube([11.6, 15.25, 6.2]);
  }
  
  // Reset button
  translate([79.9-7.6, board_y-5.7-3.5, board_z]) {
    translate([3.5, 5.7+3.5, 3.5]) {
      rotate([90, 0, 0]) {
        cylinder(3.5, 3.5/2, 3.5/2);
      }
    }
    cube([7.6, 5.7, 7.1]);
  }
  
  // SD card
  translate([board_x-46, board_y-14.8, board_z]) {
    cube([14.8, 14.8, 2]);
  }
}
