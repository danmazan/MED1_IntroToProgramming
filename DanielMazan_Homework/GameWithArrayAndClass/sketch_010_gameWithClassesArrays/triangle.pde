class myTriangle{
  
  float x;
  float y; 
  float w=4;//width of triangle
  float h=(-2);//height of triangle
//constructor
 myTriangle(float temp_x, float temp_y){ 
  x = temp_x;
  y = temp_y;
   }
   
   void display(){ // draw (specific) triangle
     triangle(x,y,x+w/2,y+h,x+w,y);
     
     
   }
}
