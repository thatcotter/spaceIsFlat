

class Star {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Star(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    //stroke(0);
    //strokeWeight(2);
    noStroke();
    fill(200, 200, 75);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
}
