// 
// Jiffer Harriman
// countPerClick2
//
// similar to countPerClick

int numPerClick = 20;
int count = 20;

void setup(){
  size(600, 600);
  background(0);
  fill(0, 0);
  
  strokeWeight(3);
}


void draw(){
   
  if (count < numPerClick){
    stroke(200, 10 * count, 100, 50); 
    curve(random(width), random(height), mouseX, mouseY,  random(width), random(height), random(width), random(height));
    count++;
  }
  
}

void mousePressed(){
  count = 0;
  //background(0);
}
