Gravityball ball;
Gravityball[] b= new Gravityball[1500];

void setup(){
  size(800,600);
  for(int i= 0; i<b.length; i++){
  b[i]= new Gravityball();
  colorMode(HSB, 360, 100,100,100);
  }
}

void draw(){
  background (0);
  for(int i= 0; i<b.length; i++){
  b[i].move();
  b[i].bounce();
  b[i].display();
  }
}

class Gravityball {
  float sz;
  PVector loc, vel;
  float hue, sat, bright, alpha;
  Gravityball(){
    sz= 10;
    loc = new PVector(random(sz, width/sz),random(height/sz));
    vel = PVector.random2D();
    sat= 100;
    bright= 100;
    alpha= 70;
  }

  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}

