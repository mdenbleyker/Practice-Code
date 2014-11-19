PVector loc, acc, vel, mouse;
int sz=70;

void setup() {
  size(900, 600);
  loc= new PVector(width/2, height/2);
  vel=PVector.random2D();
  acc= new PVector(0, 0);
  noCursor();
  mouse= new PVector();
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(0);
  vel.add(acc);
  loc.add(vel);
  if (dist(mouse.x, mouse.y, loc.x, loc.y)<sz/2) {
    fill(20, 100, 200);
    if (loc.x<mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x= abs(vel.x);
    }
    if (loc.y<mouse.y) {
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }
  } else {
    fill(200, 0, 100);
  }
  ellipse(loc.x, loc.y, sz, sz);
  if (loc.x + sz/2> width || loc.x-sz/2<0) {
    vel.x*=-1;
  }
  if (loc.y + sz/2> height || loc.y-sz/2<0) {
    vel.y*=-1;
  }
  ellipse(mouse.x, mouse.y, 5, 5);
}

