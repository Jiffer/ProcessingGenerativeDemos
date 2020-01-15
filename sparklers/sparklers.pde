//
// Jiffer Harriman
// sparklers.pde
//
// draw curves originating at the mouse going off in random directions
//
// Click mouse to light your sparkler
//
// press 't' to toggle fade on and off
// press ' ' (space) to clear background
//

// color variable
color sparklerColor;

// size of sparkler sparks 
int size = 100;
boolean fade = true;

// initialization
void setup(){
  size(1000, 800);
  background(0);
}

// main draw loop
void draw(){
  
 // only draw when mouse is pressed 
  if (mousePressed){
    // load the spakler color
    stroke(sparklerColor);
    
   strokeWeight(random(3));
   // random curve starting at mouse
    curve((mouseX + random(-size, size)), (mouseY + random(-size, size)), mouseX , mouseY,  (mouseX + random(-size, size)), (mouseY + random(-size, size)), (mouseX + random(-size, size)), (mouseY + random(-size, size)));

  }
  
  // if fade is true then draw a low alpha rectangle over the window
  if(fade){
    // fade out the background
    fill(0, 10);
    rect(0, 0, width, height);
  }
}

// load a new random color on mouse press
void mousePressed(){
  sparklerColor = color(random(100, 255), random(50, 250), random(100, 255), 120);
}

// press 't' to toggle fade on and off
// press ' ' (space) to clear background
void keyPressed(){
  if(key == 't'){
    fade = !fade;
  }
  else if(key == ' '){
    background(0);
  }
}
