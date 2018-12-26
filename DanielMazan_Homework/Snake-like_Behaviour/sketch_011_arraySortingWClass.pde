int num=20; //how much objects do we want
star[] s = new star [num]; // initialize array of class "star" 
int i=0;
void setup(){
 size(640,320);
 for (int i = 0; i<num; i++){
 s[i] = new star(mouseX,mouseY); //initialize every single star
 }
}

void draw(){
  background(0);
  s[i] = new star(mouseX,mouseY); // initialize single star with concrete value
  i++; // change number of star (first run s[0] second s[1] and so on
  if(i % num == 0){ // if i=num 
    i=0; //then star over         this means repeat forever
  }
  for(int i = 0; i < num; i++){
    s[i].display(); //display stars
  }
}
