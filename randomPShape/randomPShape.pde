// 
// Jiffer Harriman
// randomPShape
//
// generates a random shape on a key press
// background color cycles through Hue every 5 seconds
//
// See PShape in reference for more info

// PShape object
PShape s;

void setup() {
  // initialize window and use P2D renderer
  size(700, 600, P2D);
  
  // use HSB color mode
  colorMode(HSB);
  
  // initialize PShape s
  s = createShape();
}

void draw() {
  
  // cycle through colors every 5 seconds
  background(map(millis() % 5000, 0, 4999, 255, 0), 200, 200);
  
  // render the shape s 
  shape(s, 0, 0);
  
}

// when a key is pressed generate a new shape 
void keyPressed(){
  
  s = createShape();
  s.beginShape();
  
  // randomly determine how many points to use
  for(int i = 0; i < random(3, 20); i++){
    
    // load a new random vertices 
    s.vertex(random(0, width), random(0, height));
  }
  
  //
  s.endShape(CLOSE); 
}

