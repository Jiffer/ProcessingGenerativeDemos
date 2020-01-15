//
// Jiffer Harriman
// coinDirection
//
// uses random to simulate a "coin flip" which randomly determines the direction a trail of shapes are drawn
// the images are faded by drawing a rectangle which covers the entire window

// x position variable which determines center of shapes to be drawn
float xStart = 0;

// direction variable will be either 1 or -1 for this example to represent right or left
int direction;

// window setup
void setup() {
  size(600, 600);
  background(50);
  fill(0, 0);

  noStroke();
}


void draw() {
  rectMode(CENTER);
  if (mousePressed) {
    // chose a random fill color using tRamp() function (see below)
    // random alpha betwee 5 and 50
    fill(255 * tRamp(2000), 255 * tRamp(3000), 255 * tRamp(2500), random(5, 50)); 
    
    // using xStart as base point for the x position add a random offset and draw
    // shapes with random width and height between 10 and 50 pixels
    ellipse(xStart + random(-20, 20), mouseY + random(-20, 20), random(10, 50), random(10, 50));
    rect(xStart + random(-20, 20), mouseY + random(-20, 20), random(10, 50), random(10, 50));

    // move x starting point by random amount
    xStart += direction * random(5);
  }

  // fade by drawing a low alpha rectangle on top
  rectMode(CORNER);
  fill(0, 1);
  rect(0, 0, width, height);
}

// when the mouse is clicked
// reset the x start position to the mouse position
// and randomly chose a direction of travel
void mousePressed() {
  // reset position
  xStart = mouseX;
  
  // coin flip
  if (random(100) >= 50){
    direction = 1;
  }
  else
  {
    direction = -1;
  }
}

// tRamp()
// creates a ramp that counts up from 0 to 1 
// over the specified period of time given in milliseconds 
float tRamp(int ms){
  return  map(millis()%ms, 0, (ms-1), 0, 1);
}
