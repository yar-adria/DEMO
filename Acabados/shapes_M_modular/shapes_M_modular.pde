//PULSAR BOTONES:
//"Q","W","E","R" i "T"
//"B" para cambiar fondo


PShape asta1;
PShape diagonal1;
PShape transversal;
PShape diagonal2;
PShape asta2;

float col1 = random(0,255);
float col2 = random(0,255);
float col3 = random(0,255);
float col4 = random(0,255);
float col5 = random(0,255);
float col6 = random(0,255);
float col7 = random(0,255);
float col8 = random(0,255);
float col9 = random(0,255);
float col10 = random(0,255);
float col11 = random(0,255);
float col12= random(0,255);
float col13= random(0,255);
float col14 = random(0,255);
float col15 = random(0,255);

float back1 = 255;
float back2 = 255;
float back3 = 255;

float incr = 0;
float incr1 = 0;
float incr2 = 0;
float incr3 = 0;
float incr4 = 0;


void setup() {
  size(750, 750);
  
  smooth();
  asta1 = loadShape("asta.svg");
  diagonal1 = loadShape("diagonal1.svg");
  transversal = loadShape("transversal.svg");
  diagonal2 = loadShape("diagonal2.svg");
  asta2 = loadShape("asta.svg");
}

void draw() {
  background(back1,back2,back3,2);
  asta1.disableStyle();
  diagonal1.disableStyle();
  transversal.disableStyle();
  diagonal2.disableStyle();
  asta2.disableStyle();
  
  noStroke();
  fill(col1, col2, col3);
  shape(asta1, 20, 20);
  fill(col1, col2, col3,90);
  shape(asta1, 20+incr, 20+incr);
  fill(col1, col2, col3,80);
  shape(asta1, 20+(incr*2), 20+(incr*2));
  fill(col1, col2, col3,70);
  shape(asta1, 20+incr*3, 20+incr*3);
  fill(col1, col2, col3,60);
  shape(asta1, 20+incr*4, 20+incr*4);
  fill(col1, col2, col3,50);
  shape(asta1, 20+incr*5, 20+incr*5);
  fill(col1, col2, col3,40);
  shape(asta1, 20+incr*6, 20+incr*6);
  fill(col1, col2, col3,30);
  shape(asta1, 20+incr*7, 20+incr*7);
  fill(col1, col2, col3,20);
  shape(asta1, 20+incr*8, 20+incr*8);
  fill(col1, col2, col3,10);
  shape(asta1, 20+incr*9, 20+incr*9);
  
  fill(col4, col5, col6);
  shape(diagonal1, 120, 20);
  fill(col4, col5, col6,90);
  shape(diagonal1, 120+incr1, 20+incr1);
  fill(col4, col5, col6,80);
  shape(diagonal1, 120+incr1*2, 20+incr1*2);
  fill(col4, col5, col6,70);
  shape(diagonal1, 120+incr1*3, 20+incr1*3);
  fill(col4, col5, col6,60);
  shape(diagonal1, 120+incr1*4, 20+incr1*4);
  fill(col4, col5, col6,50);
  shape(diagonal1, 120+incr1*5, 20+incr1*5);
  fill(col4, col5, col6,40);
  shape(diagonal1, 120+incr1*6, 20+incr1*6);
  fill(col4, col5, col6,30);
  shape(diagonal1, 120+incr1*7, 20+incr1*7);
  fill(col4, col5, col6,20);
  shape(diagonal1, 120+incr1*8, 20+incr1*8);
  fill(col4, col5, col6,10);
  shape(diagonal1, 120+incr1*9, 20+incr1*9);
  
  fill(col7, col8, col9);
  shape(transversal, 270, 220);
  fill(col7, col8, col9,90);
  shape(transversal, 270+incr2, 220+incr2);
  fill(col7, col8, col9,80);
  shape(transversal, 270+incr2*2, 220+incr2*2);
  fill(col7, col8, col9,70);
  shape(transversal, 270+incr2*3, 220+incr2*3);
  fill(col7, col8, col9,60);
  shape(transversal, 270+incr2*4, 220+incr2*4);
  fill(col7, col8, col9,50);
  shape(transversal, 270+incr2*5, 220+incr2*5);
  fill(col7, col8, col9,40);
  shape(transversal, 270+incr2*6, 220+incr2*6);
  fill(col7, col8, col9,30);
  shape(transversal, 270+incr2*7, 220+incr2*7);
  fill(col7, col8, col9,20);
  shape(transversal, 270+incr2*8, 220+incr2*8);
  fill(col7, col8, col9,10);
  shape(transversal, 270+incr2*9, 220+incr2*9);
  
  fill(col10, col11, col12);
  shape(diagonal2, 370, 20);
  fill(col10, col11, col12,90);
  shape(diagonal2, 370+incr3, 20+incr3);
  fill(col10, col11, col12,80);
  shape(diagonal2, 370+incr3*2, 20+incr3*2);
  fill(col10, col11, col12,70);
  shape(diagonal2, 370+incr3*3, 20+incr3*3);
  fill(col10, col11, col12,60);
  shape(diagonal2, 370+incr3*4, 20+incr3*4);
  fill(col10, col11, col12,50);
  shape(diagonal2, 370+incr3*5, 20+incr3*5);
  fill(col10, col11, col12,40);
  shape(diagonal2, 370+incr3*6, 20+incr3*6);
  fill(col10, col11, col12,30);
  shape(diagonal2, 370+incr3*7, 20+incr3*7);
  fill(col10, col11, col12,20);
  shape(diagonal2, 370+incr3*8, 20+incr3*8);
  fill(col10, col11, col12,10);
  shape(diagonal2, 370+incr3*9, 20+incr3*9);
  
  fill(col13, col14, col15);
  shape(asta2, 520, 20);
  fill(col13, col14, col15,90);
  shape(asta2, 520+incr4, 20+incr4);
  fill(col13, col14, col15,80);
  shape(asta2, 520+incr4*2, 20+incr4*2);
  fill(col13, col14, col15,70);
  shape(asta2, 520+incr4*3, 20+incr4*3);
  fill(col13, col14, col15,60);
  shape(asta2, 520+incr4*4, 20+incr4*4);
  fill(col13, col14, col15,50);
  shape(asta2, 520+incr4*5, 20+incr4*5);
  fill(col13, col14, col15,40);
  shape(asta2, 520+incr4*6, 20+incr4*6);
  fill(col13, col14, col15,30);
  shape(asta2, 520+incr4*7, 20+incr4*7);
  fill(col13, col14, col15,20);
  shape(asta2, 520+incr4*8, 20+incr4*8);
  fill(col13, col14, col15,10);
  shape(asta2, 520+incr4*9, 20+incr4*9);
}
void keyPressed() {
  if (key == 'q'){
    
    incr = incr + 5;
    col1 = random(0,255);
    col2 = random(0,255);
    col3 = random(0,255);
    if (incr > 50){
      incr = 0;
    }
  }
 if (key == 'w'){
    
    incr1 = incr1 + 5;
    col4 = random(0,255);
    col5 = random(0,255);
    col6 = random(0,255);
    if (incr1 > 50){
      incr1 = 0;
    }
  } 
 if (key == 'e'){
    
    incr2 = incr2 + 5;
    col7 = random(0,255);
    col8 = random(0,255);
    col9 = random(0,255);
   if (incr2 > 50){
      incr2 = 0;
    }
  } 
 if (key == 'r'){
    incr3 = incr3 + 5;
    col10 = random(0,255);
    col11 = random(0,255);
    col12 = random(0,255);
    if (incr3 > 50){
      incr3 = 0;
    }
  } 
 if (key == 't'){
    
    incr4 = incr4 + 5;
    col13 = random(0,255);
    col14 = random(0,255);
    col15 = random(0,255);
    if (incr4 > 50){
      incr4 = 0;
    }
  }  
  if (key == 'b'){
    back1 = random(0,255);
    back2 = random(0,255);
    back3 = random(0,255);
    }
  } 




