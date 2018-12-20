void Floor(int Gc, int w)
{
  stroke(100);  fill(200);
  beginShape();
  vertex(w,Gc,w);
  vertex(w,Gc,-w);
  vertex(-w,Gc,-w);
  vertex(-w,Gc,w);
  endShape();
}

void walls(int Gc, int w)
{
  stroke(100);  fill(200);
  beginShape();
  vertex(Gc,w,w);
  vertex(Gc,w,-w);
  vertex(Gc,-w,-w);
  vertex(Gc,-w,w);
  endShape();
  beginShape();
  vertex(-Gc,w,w);
  vertex(-Gc,w,-w);
  vertex(-Gc,-w,-w);
  vertex(-Gc,-w,w);
  endShape();
}

void sky()
{
  textSize(20);
  fill(0,255,0);
  text("SPACESHIP!",0,-270,-500);
  fill(255,0,0);
  text("Score:",300,-270,-500);
}

void spaceShip()
{
  translate(-550*sqrt(2),200,-600);
  stroke(0);  fill(200);
  for(int i=0;i<10;i++)
  {
    translate(100*sqrt(2),0,0);
    rotateZ(PI/4);
    box(100);
    rotateZ(-PI/4);
  }
  translate(-450*sqrt(2),-200,600);
}

void glass()
{
  noStroke(); fill(0,255,0,30);
  beginShape();
  vertex(-550,100,-300);
  vertex(-500,100,-400);
  vertex(-400,100,-500);
  
  vertex(400,100,-500);
  vertex(500,100,-400);
  vertex(550,100,-300);
  
  vertex(550,-300,-300);
  vertex(500,-300,-400);
  vertex(400,-300,-500);
  
  vertex(-400,-300,-500);
  vertex(-500,-300,-400);
  vertex(-550,-300,-300);
  endShape();
  
  stroke(255);
  line(5,0,-500,10,0,-500);
  line(-5,0,-500,-10,0,-500);
  line(0,5,-500,0,10,-500);
  line(0,-5,-500,0,-10,-500);
}