// 
// Jiffer Harriman
// countPerClick
//
// draw specified number of shapes each time the mouse is clicked
//

// number of shapes to draw each click
int numPerClick = 20;

// count variable to keep track of how many have been drawn
// initialized to numPerClick so that it doesn't draw when program first starts
int count = numPerClick;

// window set up
void setup(){
  size(600, 600);
  
  // black background
  background(0);
  
  //  fill color with 100% transparency (0 alpha)
  fill(0, 0);
  
  // width of lines
  strokeWeight(3);  
}

// main draw loop
void draw(){
   
  // every time through the draw loop check if count is less than numPerClick
  // draw a shape and then increment the variable count
  if (count < numPerClick){
    
    // load a new stroke color based on count and time elapsed
    stroke(millis()%200 , 5 * count, 100, map(count, 0, 20, 100, 50)); 
    
    // draw a random ellipse close to the mouse 
    ellipse(mouseX + random(-20, 20), mouseY + random(-20, 20), random(10, 100), random(10, 100));
    
    // or try a random curve 
    //curve(random(width), random(height), mouseX, mouseY,  random(width), random(height), random(width), random(height));
    
    // increment the count variable
    count++;
    
    /* 
    // fade 
    fill(0, 5);
    rectMode(CORNER);
    rect(0, 0, width, height);
    */
  }
  
}

// when mouse is clicked reset the counter to 0
void mousePressed(){
  count = 0;
  //background(0);
}
