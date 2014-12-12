String[]states={"New Jersey", "New Hampshire", "New York", "California", "Maine", "Kansas", "Texas", "Oregon", "Ohio", "Mississippi", "Washington"};

void setup(){
  size(displayWidth, displayHeight);
  background(0);
  
}

void draw(){
  for(int i=0; i<11; i++){
    textSize(30);
    fill(255,255,255);
    text(states[i], 10, 40+50*i);
  }
  }
