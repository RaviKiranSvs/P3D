shape X,Y,Z;

void setup()
{
  size(800,600,P3D);
  noCursor();
  textAlign(CENTER);
  textMode(SHAPE);
  X=new shape(1,0,0);
  Y=new shape(0,1,0);
  Z=new shape(0,0,1);
}

void draw()
{
  strokeWeight(1);
  translate(width/2,height/2);
  background(0);
  rotateX(-map(mouseY,0,height,-PI/12,PI/2));
  rotateY(map(mouseX,0,width,-PI/2,PI/2));
  
  X.axis(100);
  X.posRect(100,10);
    
  Y.axis(100);
  Y.posRect(100,10);
    
  Z.axis(100);
  Z.posRect(100,10);
  
  stroke(100);  fill(255);  box(50,50,50);
  Floor(200,500);
  walls(500,200);
  sky();
  spaceShip();
  glass();
  spaceJunk();
}

void mousePressed()
{
  strokeWeight(3);  stroke(255);
  line(0,0,-100,0,0,-500);
}

void keyPressed()
{
  
}