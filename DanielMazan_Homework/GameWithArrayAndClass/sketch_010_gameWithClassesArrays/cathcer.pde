class catcher{

  int x; //position
  int y; //position
  int wHalf; // half of width
  int h; // height
  int speed; //speed of rect

catcher(int temp_x, int temp_y, int temp_wHalf, int temp_h, int temp_speed){//same as in ball class
  x = temp_x;
  y = temp_y;
  wHalf = temp_wHalf;
  h = temp_h;
  speed = temp_speed;
}

//displaying platform + adding color
void display(){ 
 fill(0,255,0);
 rect(x,y,wHalf*2,h);
}

// moving of platform
void move(){ 
   if (keyPressed) {
    if(keyCode == RIGHT || key == 'd'){ //if right or d pressed move by speed pixels
      x= x + speed;
    }
    else if (keyCode == LEFT || key =='a'){ // same as above 
      x=x-speed;
    }
  }
}
  
}
