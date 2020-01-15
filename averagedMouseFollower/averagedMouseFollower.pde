// Jiffer Harriman
//
// This sketch does some weighted averaging to determine where to draw 
// the size of the ellipses being drawn are determined by the last time the mouse was clicked
// 

// variables to store previous draw position and current draw position
float x, y, px, py;
float weight = 0.9;

// size of the ellipse when mouse is clicked (quickly diminishing towards 0)
int size = 80;

// keep track of whether or not drawing is happening 
boolean drawing = false;

// timer variables to keep track of when mouse is clicked and what the maximum time is
int later;
int timerLength = 5000;

// variable to store the backgroundcolor
color backgroundColor = color(40, 80, 100); // bluish

void setup(){
  // set up window size
  size(900, 600);
  
  // fill background
  background(backgroundColor);
  
  // set stroke and fill colors
  stroke(0, 200);
  fill(205, 100);
}


void draw(){
  
  // calculate x and y position based on weighted average of current mouse position and previous position of x,y draw point
  // making weight cloesr to 0 will make the drawing follow the mouse faster
  // making it closer to 1 will make it follow more slowly
  x = (1 - weight) * mouseX + weight * px;
  y = (1 - weight) * mouseY + weight * py;
  
  // save previous x, y position for next time around 
  px = x;
  py = y;
  
  // to draw or not to draw something new this frame is the question
  if(!drawing){
    // if not drawing do nothing!
  }
  else // draw something
  {
    // here the ellipse is drawn based on the size and the amount of time that has passed since the mouse was last clicked
    // starting at full size and going to 0
    ellipse(x, y, (size * (later - millis())/timerLength), (size * (later - millis())/timerLength));
  }
  
  // check timer
  // if drawing is true and millis() (a.k.a. now) is greater than later then stop drawing
  if (drawing && later < millis()){
    drawing = false;
  }
}

// when the mose is pressed reset the timer by calculating a new later value
// and set drawing to true
void mousePressed(){
  // set variable later equal to current time plus some offset to make it later
  // now = millis()
  // Remember!: this is going to be in milliseconds! so 1000 = 1 second
  later = millis() + timerLength;
  
  // set bigger to true 
  drawing = true;
    
}

// when any key is pressed clear the canvas
void keyPressed(){
  background(backgroundColor);
}
