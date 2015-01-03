class Letter { 
  float ypos, speed; 
  int col;  
  PGraphics graphicalMask;
  
  Letter (int val, int col, String modul,int posx, int posy, int iw, int ih) {  
    smooth();
    graphicalMask=createGraphics(iw, ih);
    graphicalMask.beginDraw();
    PShape modulLoaded = loadShape(modul);   
    modulLoaded.disableStyle();
    //graphicalMask.fill( val, col, 100);
    graphicalMask.fill( 255, 255, 255);    
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
