//set up the background music
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
import ddf.minim.*;

AudioPlayer player;
Minim minim;
// create arraylist for the particles
ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
PImage Sparkler;


void setup() {
  //load and play music
  minim = new Minim(this);
  player = minim.loadFile("Katy Perry - Firework.mp3");
    player.play();
  //display the background 
  Sparkler= loadImage("sparklystick.jpg");
  size(Sparkler.width, Sparkler.height);
  noStroke();
}

void draw() {
  //make the particles fly out when the mouse is pressed
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }
  //background
  background(Sparkler);
  //apply display and move commands to the current particle
  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.isDead()) {
      allMyParticles.remove(i);
    }
  }
}

//create class particle 
class Particle {
  // define PVectors for location, speed, acceleration and create sz for size
  PVector loc, vel, acc;
  float sz;

  Particle() {
    //create PVector for loc, vel, acc and define size
    loc = new PVector(width/2.2, height*.4);
    vel = new PVector(random(-3, 3), random(-4, -2));
    acc = new PVector(0, .1);
    sz = 5;
  }

  void display() {
    //create circles and make fill color change as the circles fall
    ellipse(loc.x, loc.y, sz, sz);
    fill(255,255, loc.x/2);
  }

  void move() {
    //move the circles and make the circles accelerate as the circles descend
    vel.add(acc);
    loc.add(vel);
    
  }

  boolean isDead() {
    //make the circle disappear when it leaves the screen
    if (loc.y -sz/2 > height) {
      return true;
    } else {
      return false;
    }
  }
}

