//
// Jiffer Harriman
// noiseWave.pde
//
// uses Perlin noise to place ellipses in the window  
//
// see also:
// http://processing.org/examples/noisewave.html

// variables to store position in noise field
float x, y;

// initialization
void setup(){
  size(500, 500);
  smooth(); 

  // drawing parameters
  strokeWeight(2);
  fill(60, 75);
  stroke(70, 10, 50, 50);
}


// draw loop
void draw(){
  // fill background
  background(100);
  
  // store current x position for reloading later
  float xtemp = x;
  
  // loop across the width of the screen 
  // (i is used to determine x position)
  for(int i=0; i<width; i++){
    
    // draw an ellipse with y position determined by perlin noise
    ellipse(i, int(height*noise(x, y)), 10, 10);
    
    // increment through noise field
    x+=0.005;
  }
  
  // use this to move across the screen
  // reload the position in noise field from when this draw loop began plus an offset
  x = xtemp+0.005;  
  
  // don't move across the screen
  // no additoinal offset
  // x = xtemp;
  
  // increment the 2nd dimension of noise field
  y+=0.001;
}
