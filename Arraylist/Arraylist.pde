
ArrayList<BouncyBall> balls = new ArrayList<BouncyBall>();

void setup() {
  size(800, 600);
  background(0);
  //add a new BouncyBall to the ArrayList using the .add() method
  balls.add(new BouncyBall(random(5, 80)));
}

void draw() {
  background(0);
  //use a for loop to go through all possible values for the index
  for (int i = 0; i < balls.size (); i++) {
    BouncyBall b = balls.get(i);    //declare a placeholder BouncyBall and assign it the BouncyBall that we get at the specified index
    //do whatever I want with BouncyBall b
    b.display();
    b.move();
    b.wallBounce();
  }
}

void mousePressed() {
  //each time the mouse is pressed, add a new BouncyBall to the ArrayList using the .add() method
  balls.add(new BouncyBall(random(5, 80)));
}
