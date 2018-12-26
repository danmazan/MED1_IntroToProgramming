float r=0;//hypotenuse
float theta = 0; // angle
float t = 0; // time
float thick; //thicknes of a line over time
float blu; //blue color
float thickMIN=10;// minimal value of thickness
float thickMAX=40;//maximal value of thickness
float tINC = 0.1; //value for increasing time
float thetaINC = 0.05; // value for increasing angle
float rINC=0.5;// value for increasing radius of spiral

void setup(){
  size(640,320);
  background(255);
  smooth();
  
  }

void draw(){
  //transfering to cartesian
  float x = r * cos(theta); 
  float y = r * sin(theta);
  
  noStroke(); //without a line
  
  blu = noise(t); // assigning noise to blue color
  blu = map(blu,0,1,0,255); // making interval of noise bigger (from 0-1 to 0-255)
  fill(0,0,blu); //adding color to ellipse
  //doing the same but with thickness of line (width and height of ellipse)
  thick = noise(t);
  thick = map(thick,0,1,thickMIN,thickMAX);
  
  //drawing ellipse
  ellipse(x+width/2, y+height/2,thick,thick);

  t=t+tINC; //adding time so that noise could change overtime
  
  theta+=thetaINC; // increasing degree so it is spinning 
  r+=rINC; // increasing radius so it is not only ellipse made of small elipses but spiral
}
