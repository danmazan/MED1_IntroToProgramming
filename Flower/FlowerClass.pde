class Flower_{
 
  //Variables
  
  float r; //radius of flower
  int nPetals; // number of petals
  float x; // x position of middleFlower
  float y; // y position of middleFlower
  int petalColor;
  int speed; // velocity of flower
  int xDirect; // direction of x position
  int yDirect; // direction of y position
  
  
  Flower_ (float temp_r,int temp_nPetals, float temp_x, float temp_y, int temp_petalColor, int temp_speed, int temp_xDirect, int temp_yDirect) {
    r=temp_r;
    nPetals=temp_nPetals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speed=temp_speed;
    xDirect=temp_xDirect;
    yDirect=temp_yDirect;
  }
void display(){

   float ballX;
   float ballY;
   
    fill(petalColor);
    for (float i=0;i<PI*2;i+=2*PI/nPetals) {
  ballX=x+ r*cos(i); // petals around middle
  ballY=y + r*sin(i); // petals around middle
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  moveabounce();
  }
  
  void moveabounce(){
    x = x + (speed * xDirect); //move x position
    y = y + (speed * yDirect); // move y position 
   if (x > width-r || x < r) {
      xDirect = -xDirect; // change x direction when boundary is reached
    }
    if (y > height-r || y < r) {
      yDirect = -yDirect; // change y direction when boundary is reached
    }
  
  }}
