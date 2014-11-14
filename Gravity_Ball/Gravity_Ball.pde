float locx;
float locy;
float velx;
float vely;
float accy;
float accx;
int sz;

void setup(){
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
  background(0);
  ellipse(locx, locy, sz,sz);
  velx+= accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  
  if(locy+sz/2> height){
    vely*= -abs(1);
    locy= height-sz/2;
  }
}
  

