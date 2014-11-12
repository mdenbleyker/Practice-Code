
int sz= 30; 
int x;
int y;
int speedx=1;
int speedy= 1;
int a= 30;
int b=100;
int c=20;
int e;
int d=10;
int f=30;
int g=100;
int sl;
int sr;



void setup() {
 noStroke();
  size(900,700);
  frameRate(300);
x= width/2;
y= height/2;
e= width-40;
}

void draw() {
  println(e);
  background(120, 255, 102);
  x=x+speedx;
  y=y+speedy;
  
  //color: determining background and stroke
  fill(0);
  stroke(255,255,255);
  strokeWeight(5);
  rect(1,1,896, 696);
  line(width/2, 0, width/2, height);
  noFill();
  ellipse(width/2, height/2, 200,200);
  fill(0);
  stroke(255,0,0);
  frameRate(300);
  
  
  //ball: to create ball and make it bonce
  stroke(255,255,255);
  ellipse(x, y, sz, sz);
  fill(0);
  stroke(255,0,0);
  if (x+sz/2>width) {
     x=width/2;
    y=height/2;
  sl++;
  }
  
  if (x-sz/2<0) {
    x=width/2;
    y=height/2;
    sr++;
  }
  if (y+sz/2>height) {
    speedy=-speedy;
  }
  if (y-sz/2<0) {
    speedy=-speedy;
  }
  //creating paddle left
  stroke(0,0,255);
  strokeWeight(3);
  rect(c,mouseY,a,b);
  
  //creating paddle right
  stroke(255,0,0);
  rect(e,d,f,g);
  
   //controlling right paddle
  if(keyPressed){
    if(key==CODED){
      if(keyCode==UP){
        d=d-3;
      }}}
  if(keyPressed){
    if(key==CODED){
      if(keyCode==DOWN){
        d=d+3;
      }}}
  
  //making the ball bounce right
  if (x+sz/2>e && y>d && y<d+g){
    speedx=-speedx;
  }
  
  //making the ball bounce left
  if(x-sz/2<c+a && y>mouseY && y<mouseY+b){
    speedx=-speedx;
  }
  
  //scoring
 textSize(32);
 fill(255,255,255);
 text("Score", 410, 40);
 textSize(30);
 fill(0,0,255);
 text(sl, 370,40);
 textSize(30);
 fill(255,0,0);
 text(sr,505,40);
    if(sl>=10){
      background(0);
      fill(0,0,255);
      textSize(100);
      text("Game Over", 200,280);
      text("Player 1 Wins!", 100,400);
      speedy=0;
      speedx=0;
      fill(random(255));
      
    }
    if(sr>=10){
      background(0);
      fill(255,0,0);
      textSize(100);
      text("Game Over", 200,280);
      text("Player 2 Wins!", 100,400);
      speedy=0;
      speedx=0;
    }
    
    line(width/2,0, height/2, 0);
    fill(0);
 
 
}


