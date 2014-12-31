// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2, c3, c;

void setup() {
  size(640, 360);

  // Define colors
  c1 = color(0);
  c2 = color(255);
  c3 = color(0 , 0 , 255);
 // c2 = color(0, 102, 153);

  noLoop();
}
int temp=22;
int tempMax=40;
int tempMin=-5;
void draw() {
  // Background
  //setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  //setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  // Foreground
  setGradient(0, 90, 100, 80, c1, c2, c3, Y_AXIS);
 // setGradient(50, 190, 540, 80, c2, c1, X_AXIS);
}

void setGradient(int x, int y, float w, float h, color c1, color c2, color c3, int axis ) {

  noFill();

 
    //for (int i = tempMin; i <= tempMax; i++) {
     
        float inter = map(temp, tempMin, tempMax, 0, 1);
        if(temp>10){
          println(c);
          c = lerpColor(c2, c3,  inter);         
        }else{
          c = lerpColor(c1, c2,  inter);
        }
        fill(c);  
          rect(30, 20, 55, 55);    
    }
  


