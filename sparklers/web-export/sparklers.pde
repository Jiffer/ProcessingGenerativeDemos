
int numPerClick = 20;
int count = 20;
color sparklerColor;

void setup(){
  size(900, 1000);
  background(0);
  fill(0, 0);
  
  strokeWeight(1);
}


void draw(){
   
  if (mousePressed){
    stroke(sparklerColor);
   float size = 120; 
   strokeWeight(random(2));
    curve((mouseX + random(-size, size)), (mouseY + random(-size, size)), mouseX , mouseY,  (mouseX + random(-size, size)), (mouseY + random(-size, size)), (mouseX + random(-size, size)), (mouseY + random(-size, size)));

  }
  
  
  fill(0, 5);
  stroke(0);
  rect(0, 0, width, height);
}

void mousePressed(){
  sparklerColor = color(random(100, 255), random(100, 250), random(10, 105), 120);
   
}

void keyPressed(){
  background(0);
}

