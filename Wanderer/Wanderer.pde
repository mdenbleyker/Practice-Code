float locx;
float locy;
float velx;
float vely;
float accy;
float accx;
int sz;

void setup(){
  background(0);
  colorMode(HSB, 360, 100,100,100);
  size(displayWidth,displayHeight);
  locx=width/2;
  locy=height/4;
  velx=0;
  vely=4;
  accx=0;
  accy=1;
  sz=50;

}

void draw(){
  fill(frameCount%360, 100,100, 100);
  ellipse(locx, locy, sz,sz);
  velx+= accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  
  if(locx+sz/2<0){
    locx=width+sz/2;
  }
  if (locx-sz/2>0){
    locx=width-sz/2;
  }
  if (locy+sz/2<0){
   locy=height+sz/2;
  }
  if (locy-sz/2>0){
    locy=height-sz/2;
  }
}
  

