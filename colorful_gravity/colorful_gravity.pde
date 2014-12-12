
GravityBall[] g = new GravityBall[100];


void setup() {
  colorMode(HSB,360,100,100,100);
  size(800, 600);
  for (int i = 0; i < g.length; i++) {
    g[i] = new GravityBall();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
}

class GravityBall {
  PVector loc, vel, acc;
  float sz;
  float hue, sat, bright, alpha;

  GravityBall() {
    sz = 50;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    hue= random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }

  void display() {
    fill(hue,sat,bright,alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}
