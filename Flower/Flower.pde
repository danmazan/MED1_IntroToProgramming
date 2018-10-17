Flower myFlower1;
Flower myFlower2;
Flower myFlower3;


void setup() {
  size(600,400); 
  //starting values for variables 
  
  int _r=60;        
  int _nPetals=7;
  float _x=width/2;
  float _y=height/2;
  int _petalColor=#FFA000;
  int _speed=3;
  int _xDirect=1;
  int _yDirect=1;
  myFlower1 = new Flower (_r,_nPetals,_x,_y,_petalColor,_speed,_xDirect,_yDirect);
  myFlower2 = new Flower (_r-100,_nPetals+5,_x+random(-100,100),_y+random(-100,100),_petalColor,_speed-1,_xDirect,_yDirect);
  myFlower3 = new Flower (_r-50,_nPetals+3,_x+random(-200,200),_y+random(-200,200),_petalColor,_speed+2,_xDirect,_yDirect);
}
void draw(){
  background(#43AF76);
  
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower1.moveabounce();
  myFlower2.moveabounce();
  myFlower3.moveabounce();
  
}
