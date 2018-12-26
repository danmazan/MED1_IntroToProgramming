Ball b1;    // defininf var of type Ball
Ball b2;
catcher c; // defining var of type catcher
myTriangle[] tri = new myTriangle[10]; //defining array of type myTriangle

//initializing values of b1
int b1x=100;//x pos 
int b1y=100;//y pos 
int b1r=20; //radius 
int b1xs=2;//x speed 
int b1ys=2;//y speed 

//initializing values of b2
int b2x=30;//x pos 
int b2y=30;//y pos 
int b2r=30; //radius 
int b2xs=2;//x speed 
int b2ys=1;//y speed 

//initializing values of cathcer
int cx=320; //x pos
int cy=300; //y pos
int cwHalf=40; // half of width
int ch=20; //height
int cs=8; // speed

int scoreXpos=330;
int scoreYpos=40;
int score;
int point=1;
void setup(){
  size(640,360);
  //initializing balls and catcher
  b1 = new Ball(b1x,b1y,b1r,b1xs,b1ys);
  b2 = new Ball(b2x,b2y,b2r,b2xs,b2ys);
  c = new catcher(cx,cy,cwHalf,ch,cs);
   for (int i = 0; i < tri.length; i++) { //intializing every single triangle by FOR loop
     tri[i] = new myTriangle(random(width),random(height));
    }
 
}

void draw(){
 background(255);
 //displaying and moving balls
 b1.display();
 b1.move();
 b2.display();
 b2.move();
 c.display();
 c.move();
 for (int i = 0; i < tri.length; i++) { //displaying every single triangle by for loop
      tri[i].display(); 
    }
    //bouncing of b1 
 if ((c.x-c.wHalf*2)<b1.x && (c.x+c.wHalf*2)>b1.x && (c.y-c.h)<b1.y && (c.y)>b1.y){
    b1.ys= -b1.ys;
    score = score +point;
 }
   //bouncing of b2
    if ((c.x-c.wHalf*2)<b2.x && (c.x+c.wHalf*2)>b2.x && (c.y-c.h)<b2.y && (c.y)>b2.y){
    b2.ys= -b2.ys;
    score = score +point; // count score everytime ball bounces
    }
     //if we want more bouncing balls then add this if statement lines (changin  b1 to bx)
    textSize(20);
    text("score: " + score, scoreXpos,scoreYpos);
 }
