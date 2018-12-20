class shape
{
  int xd, yd,  zd;
  shape(int Xd,int Yd, int Zd)
  {
    xd=Xd;
    yd=Yd;
    zd=Zd;
  }
  void axis(int L)
  {
    stroke(255*xd,255*yd,255*zd);  noFill();
    line(-xd*L,-yd*L,-zd*L,xd*L,yd*L,zd*L);
  }
  
  void posRect(int L, int Rw)
  {
    stroke(255*xd,255*yd,255*zd);  noFill();
    beginShape();
    vertex(xd*L            +(yd)*Rw/2  +(zd)*Rw/2,
           yd*L  +(xd)*Rw/2            +(zd)*Rw/2,
           zd*L  +(xd)*Rw/2  +(yd)*Rw/2);
    vertex(xd*L            +(yd)*Rw/2  +(zd)*Rw/2,
           yd*L  +(xd)*Rw/2            -(zd)*Rw/2,
           zd*L  -(xd)*Rw/2  -(yd)*Rw/2);
    vertex(xd*L            -(yd)*Rw/2  -(zd)*Rw/2,
           yd*L  -(xd)*Rw/2            -(zd)*Rw/2,
           zd*L  -(xd)*Rw/2  -(yd)*Rw/2);
    vertex(xd*L            -(yd)*Rw/2  -(zd)*Rw/2,
           yd*L  -(xd)*Rw/2            +(zd)*Rw/2,
           zd*L  +(xd)*Rw/2  +(yd)*Rw/2);
    vertex(xd*L            +(yd)*Rw/2  +(zd)*Rw/2,
           yd*L  +(xd)*Rw/2            +(zd)*Rw/2,
           zd*L  +(xd)*Rw/2  +(yd)*Rw/2);
    endShape();
  }
}