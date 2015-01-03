class Letter { 
  float ypos, speed; 
  int col;  
  PGraphics graphicalMask;
  
  Letter (int val, int col, String modul,int posx, int posy, int iw, int ih) {  
    graphicalMask=createGraphics(iw, ih, JAVA2D);
    graphicalMask.beginDraw();
    PShape modulLoaded = loadShape(modul);   
    graphicalMask.fill( val, col, 100);    
    graphicalMask.noStroke();
    graphicalMask.shape(modulLoaded, posx,posy);
    graphicalMask.endDraw();    
  
  } 
  void update() { 
    /*ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos);
    */ 
  } 
}
