//
// Jiffer Harriman
// modesDice.pde
//
// This program provides an example of using randomness to select between a few behaviors
// It also provides a method for using specific key inputs to change modes
//
// type '0', '1', '2' or '3' for specific modes
// type 'r' for a random mode
// space bar clears the screen

// variable to keep track of current draw mode
int mode = 0;

// initialize window and background
void setup(){
  size(800, 400);
  background(0);
}

// draw loop
void draw(){
  
  //  Check value of mode variable to determine draw mode
  if(mode == 0)
  {
    // do nothing
  }
  else if(mode == 1){
    int randomSize = (int)random(10, 30);
    ellipse(mouseX, mouseY, randomSize, randomSize);
  }
  else if(mode == 2){
    int randomSize = (int)random(10, 30);
    rect(mouseX, mouseY, randomSize, randomSize);
  }
  else if(mode == 3){
    ellipse(random(width), random(height), random(40), random(40));
  }
}

// when a key is pressed this function is automatically called
void keyPressed(){
  if(key == '0')
  {
    mode = 0;
  }
  else if(key == '1'){
    mode = 1;
  }
  else if(key == '2'){
    mode = 2;
  }
  else if(key == '3'){
    mode = 3;
  }
  // when space is pressed clear the screen
  else if(key == ' '){
    background(0);
  }
  // if 'r' is pressed call dice function to set a new mode
  else if(key == 'r'){
    mode = dice(4);
  }
}

// dice() 
// takes in an integer to determine how many "sides" the dice has
// returns a random integer between 1 and sides
int dice(int sides){
  
  // local variable to store the result before returning the value
  int result;
  // random returns a float between 0 and the int "sides" (but not equal to sides)
  // the float is cast to an integer and 1 is added to go from 1 to sides instead of 0 to (sides - 1)
  result = (int)random(sides) + 1;
  
  // return the result
  return result;
}
