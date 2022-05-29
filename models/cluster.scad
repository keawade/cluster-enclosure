include<atomicPi.scad>
include<fan.scad>

for(a = [0:3]) {
  translate([0, 0, a * (35+1.6)]) {
    atomicPi();
  }
}

// Posts
post_height = 15;
translate([3.5, 3.5, -post_height]) {
  linear_extrude(post_height) {
    regular_polygon(6,  5.6/2);
  }
}
translate([100-3.5, 3.5, -post_height]) {
  linear_extrude(post_height) {
    regular_polygon(6,  5.6/2);
  }
}
translate([3.5, 130-3.5, -post_height]) {
  linear_extrude(post_height) {
    regular_polygon(6,  5.6/2);
  }
}
translate([100-3.5, 130-3.5, -post_height]) {
  linear_extrude(post_height) {
    regular_polygon(6,  5.6/2);
  }
}

translate([-10,-5,15])
  rotate([90,0,0])
    fan();
