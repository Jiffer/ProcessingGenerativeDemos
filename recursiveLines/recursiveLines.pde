//
// Jiffer Harriman
// lines
//
// uses recursion to have a function call itself
// generates a random set of lines starting from a mouse click


void setup() {
  size(300, 600);
}

void draw() {
  // see mousePressed
}

void mousePressed() {
  drawLines(mouseX, mouseY, 25);
}

// drawLines
// pass in start x,y point for the next line 
// and how many more lines to draw
void drawLines(int x, int y, int num) {
  
  // generate a newX and newY point to draw the line to from the starting point 
  int newX = x + (int)random( -20, 20);
  int newY = y - (int)random(10, 30);
  
  // draw the new line
  line( x, y, newX, newY);
  
  // if still more to draw, draw decrement number and call itself
  if (num > 0) {
    num--; 
    drawLines(newX, newY, num);
  }
}

