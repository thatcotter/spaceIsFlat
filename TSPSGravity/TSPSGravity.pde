
import tsps.*;
TSPS tspsReceiver;

Star[] stars = new Star[20];

Gravity blackHole;
Gravity blackHole2; 
Gravity blackHole3;
Gravity blackHole4;
Gravity blackHole5;

Gravity[] gravity;

void setup() {
  //size(640, 360);
  size(displayWidth, displayHeight);
  
  frameRate(20);

  tspsReceiver= new TSPS(this);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(1.0, 10.0), random(width), random(height));
  }
}

void draw() {
  background(35);


  TSPSPerson[] people = tspsReceiver.getPeopleArray();//find all the blobs
  PVector resting = new PVector( .5, .5);

  if (people.length > 4) {
    blackHole5 = new Gravity(people[4].centroid);
    blackHole5.display();
    for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole5.attract(stars[i]);
      stars[i].applyForce(force);

      //stars[i].update();
      //stars[i].display();
    }
  }


///*
  if (people.length > 3) {
    blackHole4 = new Gravity(people[3].centroid);
    blackHole4.display();
    for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole4.attract(stars[i]);
      stars[i].applyForce(force);

      //stars[i].update();
      //stars[i].display();
    }
  }

  if (people.length > 2) {
    blackHole3 = new Gravity(people[2].centroid);
    blackHole3.display();
    for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole3.attract(stars[i]);
      stars[i].applyForce(force);

      //stars[i].update();
      //stars[i].display();
    }
  }

  if (people.length > 1) {
    blackHole2 = new Gravity(people[1].centroid);
    blackHole2.display();
    for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole2.attract(stars[i]);
      stars[i].applyForce(force);

      //stars[i].update();
      //stars[i].display();
    }
  }

  if (people.length > 0) {

    blackHole = new Gravity(people[0].centroid);//location of the fisrt blob becomes the graity
    blackHole.display();//show me the gravity
    for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole.attract(stars[i]);
      stars[i].applyForce(force);

      //stars[i].update();
      //stars[i].display();
    }
  }//*/
  
  
  else { 
    //PVector resting = new PVector( 1, 1);
    blackHole = new Gravity(resting);//just put it in the middle
    blackHole.display();//show me the gravity

      for (int i = 0; i <stars.length; i++) {
      PVector force = blackHole.attract(stars[i]);
      stars[i].applyForce(force);

      stars[i].update();
      stars[i].display();
    }
  }

  for (int i = 0; i <stars.length; i++) {
    //stars[i].applyForce(force);
    stars[i].update();
    stars[i].display();
  }
}

