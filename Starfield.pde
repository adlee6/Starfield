Particle [] bobs;
void setup() {
  size(500,500);
  background(0);
  bobs = new Particle [16];
  for (int i = 0; i < 8; i++)
  bobs[i] = new elec();
  for (int i = 8; i < bobs.length; i++)
  bobs[i] = new Particle();
}

void draw() {
  background(0);
  for(int i = 0; i < bobs.length; i++) {
   bobs[i].show();
   bobs[i].move();
  }
}

class Particle{
  double myX, myY, mySpeed,myAngle;
  int myColor, radiusX, radiusY;;
  Particle() {
   myX = 250 + (int)(Math.random()*20-10);
   myY= 250 + (int)(Math.random()*20-10);
   myColor = color(0,0,255);
   mySpeed = 0.5;
  }
  void show() {
  fill(myColor);
  ellipse((int)myX, (int)myY, 8,8);
  }
  void move(){
   myX += mySpeed*(int)(Math.random()*20-10);
   myY += mySpeed*(int)(Math.random()*20-10);
   
   if(myX <= 245 || myX >= 255)
    myX = 250;
   if (myY <= 245 || myY >= 255)
   myY = 250;
  }
}

class elec extends Particle {
  elec() {
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    radiusX = (int)((Math.random()*70)+(Math.random()*50)+10);
    radiusY = (int)((Math.random()*30)+(Math.random()*50)+10);
    myColor = color(255,0,0);
    myAngle = Math.random()*2*PI;

  }
  void move(){
   myAngle += .18;
   myX = 250 + radiusX * Math.cos(myAngle); 
   myY = 250 + radiusY * Math.sin(myAngle);
  }
}


