void spaceJunk()
{
  rotateY(-map(mouseX,0,width,-PI/2,PI/2));
  rotateX(map(mouseY,0,height,-PI/12,PI/2));
  
  fill(255);
  translate(-200,-200,-1000);
  box(20);
  translate(200,200,1000);
  
  rotateX(-map(mouseY,0,height,-PI/12,PI/2));
  rotateY(map(mouseX,0,width,-PI/2,PI/2));
}