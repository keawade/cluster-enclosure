module cylinder_outer(height, radius, fn){
  fudge = 1/cos(180/fn);
  cylinder(h=height, r=radius*fudge, $fn=fn);}

module regular_polygon(order = 4, r=1){
  angles=[ for (i = [0:order-1]) i*(360/order) ];
  coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
  polygon(coords);
}
