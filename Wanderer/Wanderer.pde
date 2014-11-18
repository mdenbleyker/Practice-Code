PVector loc;
PVector vel;
PVector acc;
int sz=50;

void setup(){
  
  colorMode(HSB, 360, 100,100,100);
  size(displayWidth,displayHeight);
  loc= new PVector(width/2, height/2);
  vel= new PVector(0,0);
  acc= new PVector(random(-.1,.1), random(-.1,.1));
  sz=50;

}

void draw(){
  acc.set(random(-.1,.1), random(-.1,.1));
  fill(frameCount%360, 100,100, 100);
  stroke(frameCount%360, 100,100, 100);
  vel.add(acc);
  loc.add(vel);
  vel.limit(5);
  
  ellipse(loc.x, loc.y, sz,sz);
  
  
  if(loc.x+sz/2<0){
    loc.x=width+sz/2;
  }
  if (loc.x-sz/2>width){
    loc.x=-sz/2;
  }
  if (loc.y+sz/2<0){
   loc.y=height+sz/2;
  }
  if (loc.y-sz/2>height){
    loc.y=-sz/2;
  }

  }

  

