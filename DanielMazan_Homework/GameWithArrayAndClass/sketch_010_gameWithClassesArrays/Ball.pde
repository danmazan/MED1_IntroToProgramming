class Ball{
 
 float x; //position
 float y; // position
 float r; // radius
 float xs; // x speed of ball 
 float ys; // y speed of ball
 
 Ball(float temp_x, float temp_y, float temp_r, float temp_xs, float temp_ys){ //defining contrustor +adding temp var
 x = temp_x; //assigning temporary variables to real var
 y = temp_y;
 r = temp_r;
 xs = temp_xs;
 ys = temp_ys;
 }

 // displaying ball where we want + adding color
 void display(){ 
   fill(255,0,0);
   ellipse(x,y,r,r);
 }
  
  void move(){ 
    x = x - xs; // moving ball in x direction (xs define how fast)
    y = y - ys; // moving ball in y direction (ys define how fast)
    
    // boundaries of ball
    if (y<0) //if y of ball reach top
      ys= -ys; // then go backward
  if (x>width || x<0) // if x of ball reach side
      xs= -xs; // then go backward
    
  }
}
