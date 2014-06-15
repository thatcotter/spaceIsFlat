

class Gravity {

  float mass;  //size
  float G;     //gravitational constant
  PVector location;


  Gravity(PVector here) {
    location = new PVector(here.x * width, here.y * height);
    mass = 20.0;
    G = 1.0;
  }
  

  PVector attract(Star m) {
    PVector force = PVector.sub(location, m.location);
    float d = force.mag();
    d = constrain(d, 1.0, 15.0);
    force.normalize();
    float strength = (G * mass * m.mass) / (d * d * 0.45);
    force.mult(strength);
    return force;
  }

  void display() {
    ellipseMode(CENTER);
    noStroke();
    fill(55, 200);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
}

