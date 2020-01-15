


void setup(){
  size(600, 600);
  background(0);
  fill(0, 0);
  
  strokeWeight(3);
  
}


void draw(){
   rectMode(CENTER);
  if (mousePressed){
    stroke(map(millis()%2000, 0, 2000, 0, 255) , map(millis()%3000, 0, 3000, 0, 255), 100, random(50, 150)); 
    ellipse(mouseX + random(-20, 20), mouseY + random(-20, 20), random(10, 50), random(10, 50));

  }
  
  rectMode(CORNER);
  fill(10, 5);
  //rect(0, 0, width, height);
}

