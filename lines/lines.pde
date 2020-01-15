// 
// Jiffer Harriman
//
// generate random lines somwhere between the last line 
// and the some percentage of the other end of the window

// variable to keep track of if last line was horizontal or vertical
boolean horizontal = false;

// percentage of window to use for placement of next random line
float percent = .25;

void setup(){
  size(500, 500);

  background(255);
  strokeWeight(1);
}

void draw(){
 // the magic only happens on key press 
}

void keyPressed(){
  background(255);
  drawLines(5, 5);
}


// draw numLines lines, numTimes times!
void drawLines(int numLines, int numTimes){
 //  
  for(int j = 0; j < numTimes; j++){
    // each time through the loop reset the "lastLine" to 0
    float lastLine = 0;
    
    // loop and draw numLines lines
    // alternating between horizontal and vertical
    // starting at the last line
    for(int i = 0; i < numLines; i++){
      
      if(horizontal){ // draw a horzontal line
      
        // choose random start point between last line and some percent of window
        float randomStart =  int(random(lastLine, percent * (height-lastLine)));
        
        // draw the line
        line(lastLine, randomStart, width, randomStart);
        
        // store the value used for the next line
        lastLine = randomStart;
      }
      
      else // draw a vertical line 
      {
        int randomStart =  int(random(lastLine, percent * (width - lastLine)));
        line(randomStart, lastLine, randomStart, height);
        lastLine = randomStart;
    } 
    
    // switch directions
    horizontal = !horizontal;
  
    }
  }
}
