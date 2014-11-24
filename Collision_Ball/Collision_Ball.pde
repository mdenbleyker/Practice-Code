int count=70;
PVector[] loc= new PVector[count];
PVector[] acc= new PVector [count];
PVector [] vel= new PVector [count];
float[] sz= new float[count];
float[] mass= new float[count];
int minDiam= 10;
int maxDiam= 60;

void setup() {
  size(900, 600);
  for (int i=0; i< count; i++) {
    sz[i] = random(10, 30);
    acc[i]=new PVector(0, 0);
    loc[i]=new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]=PVector.random2D();
    acc[i]= new PVector(0,0);
    mass[i]= map(sz[i], minDiam, maxDiam, .1, 1.5);
  }
}

void draw() {
  background(0);
  for (int i= 0; i< count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);

    for (int j= 0; j< count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j])< sz[i]/2+ sz[j]/2) {
          print("Collision");
            vel[i]= PVector.sub(loc[i], loc[j]);
            vel[i].normalize();
            vel[i].div(mass[i]);
        }
      }
    }
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    if (loc[i].x + sz[i]/2> width || loc[i].x-sz[i]/2<0) {
      vel[i].x*=-1;
    }
    if (loc[i].y + sz[i]/2> height || loc[i].y-sz[i]/2<0) {
      vel[i].y*=-1;
    }
  }
}
void mouseReleased() {
  loc[0].set(mouseX, mouseY);
}

