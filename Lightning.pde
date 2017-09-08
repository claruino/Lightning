
int startX = 90;
int startY = 130;
int endX = 0;
int endY = 150;

void setup(){
  size(400, 400);
  strokeWeight(2);
  background(204, 153, 255);
  //noLoop();
}

void draw(){  
  //crayon 
  noStroke();
  fill(255);
  rect(70, 0, 40, 125);
  triangle(110, 125, 69, 125, 90, 155);
  fill(0);
  rect(70, 70, 40, 20);
  rect(70, 115, 40, 10);
  
  //lightning
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endX < 400)
  {
      endX = startX + (int)(Math.random()*9) ;
      endY = startY + (int)(Math.random()*-9)+10 ; 
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
  }
}

void mousePressed(){
  //redraw();
  startX = 90;
  startY = 130;
  endX = 0;
  endY = 150;
}

