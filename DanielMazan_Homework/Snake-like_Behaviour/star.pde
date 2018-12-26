class star{
  
  //initial points of stars
  float x;
  float y;
  float w=60;//width of star
  float h1=60;//height of 1 triangle of star
  float h2=(-20);//height of 2 triangle of star
  float yt2=40;//starting y position of second triangle
  
  star(float x_temp, float y_temp){ // defining constructor variables
    
    x = x_temp;
    y = y_temp;
    
  }
 
  void display(){
    fill(#EDFF00);
    noStroke();
    triangle(x,y,x+w,y,x+w/2,y+h1);
    triangle(x,y+yt2,x+w,y+yt2,x+w/2,y+h2);
  }
  
}
