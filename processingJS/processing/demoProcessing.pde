
class Letter {
  float ypos, speed;
  int col;
  PGraphics graphicalMask;

  Letter (String fillColor, String modul, int px, int py, int iw, int ih, int scaled) {
    smooth();
    // String strokeColor = fillColor;
    int strokeW =2;
    graphicalMask=createGraphics(iw/scaled,ih/scaled);
    graphicalMask.beginDraw();
    PShape modulLoaded = loadShape("processing/"+modul);
    modulLoaded.disableStyle();
    //graphicalMask.fill( val, col, 100);
    fillColor = unhex("FF" + fillColor.substring(0));

   // graphicalMask.fill( 0xff70a086 );
    graphicalMask.stroke(255,0,0);
    graphicalMask.strokeWeight(strokeW);
    graphicalMask.fill( fillColor );
    //graphicalMask.noStroke();
    graphicalMask.shape(modulLoaded,0,0,modulLoaded.width/scaled,modulLoaded.height/scaled);
    graphicalMask.endDraw();
    image(graphicalMask, px/scaled, py/scaled);

    //text(fillColor, px,py);
  }
}

interface JavaScript {
	void saveImg();
}


JavaScript javascript =null;

void setJavaScript(JavaScript js) {
	javascript = js;
}

ArrayList dataJson;

void setup() {
	//noLoop();

	size(1280, 600);

	background(255);

	smooth();
	dataJson = new ArrayList();
    int i = 0;
}


void draw() {
	//text(data1,50, 50);
	//text(getData1,50, 50);
    i++;

}

color checkColor(array, num){
	if(!array[num]) return "ff0000";
	else return array[num];
}

void getData ( dataJson ) {

	posx=200;
	posy=200;
    fill(0,0,0);
	text(dataJson ,50, 450);

	data1 = dataJson.bicing;
	data2 = dataJson.distance;
	data3 = dataJson.humidity;
	data4 = dataJson.temp;
	data5 = dataJson.totalOnline;
	data6 = dataJson.transit;

	for (int i = 0; i < dataJson.colors.length; i++) {

		//text(i+" color "+dataJson.colors[i]  ,100, 10+ (10*i));

	}

	color0= checkColor(dataJson.colors, 0);
	color1= checkColor(dataJson.colors, 1);
	color2= checkColor(dataJson.colors, 2);
	color3= checkColor(dataJson.colors, 3);
	color4= checkColor(dataJson.colors, 4);
	color5= checkColor(dataJson.colors, 5);
/*
	col1=B1C9D8;
	col2=364C9A;
	col3=545453;
	col4=27397F;
	col5=00005A;
	col6=273588;
	col7=EB6D63;
*/
	color1="B1C9D8";
	color2="364C9A";
	color3=checkColor(dataJson.colors, 0);
	color4="545453";
	color5="C4413D";
	color6=checkColor(dataJson.colors, 1);

	dposX=0;
	eposX=200;
	mposX=370;
	oposX=600;
    //i=0;

	Letter D_1 = new Letter(color1,  checkModule("d1", data2), posx, posy, 0,90, 3);
	Letter D_2 = new Letter(color2,  checkModule("d2", data1), posx+30+(i*10), posy+(i*10), 600, 600, 3);
    Letter D_3 = new Letter(color3,  checkModule("d3", data1), posx+30+(i*10), posy+90+(i*10), 600, 600, 3);
    Letter D_4 = new Letter(color4,  checkModule("d4", data2), posx, posy+90, 0,90, 3);

    Letter E_1 = new Letter(color5,  checkModule("e1", data2), posx+eposX+(i*10), posy+(i*10), 0, 90, 3);
    Letter E_2 = new Letter(color2,  checkModule("e2", data2), posx+eposX+30+(i*10), posy+(i*10), 0, 0, 3);
    Letter E_3 = new Letter(color2,  checkModule("e3", data2), posx+eposX+30+(i*10), posy+60+(i*10), 0, 0, 3);
    Letter E_4 = new Letter(color2,  checkModule("e4", data2), posx+eposX+30+(i*10), posy+150+(i*10), 0, 0, 3);
    Letter E_5 = new Letter(color5,  checkModule("e5", data2), posx+eposX+(i*10), posy+90+(i*10), 0, 90, 3);

    Letter M_1 = new Letter(color2,  checkModule("m1", data2), posx+mposX+(i*10), posy+(i*10), 0, 180, 3);
    Letter M_2 = new Letter(color6,  checkModule("m2", data3), posx+mposX+30+(i*10), posy+(i*10), 0, 0, 3);
    Letter M_3 = new Letter(color2,  checkModule("m3", data2), posx+mposX+75+(i*10), posy+60+(i*10), 0, 0, 3);
    Letter M_4 = new Letter(color6,  checkModule("m4", data3), posx+mposX+105+(i*10), posy+(i*10), 0, 0, 3);
    Letter M_5 = new Letter(color2,  checkModule("m5", data2), posx+mposX+150+(i*10), posy+(i*10), 0, 180, 3);

    Letter O_1 = new Letter(color4,  checkModule("o1", data3), posx+oposX+(i*10), posy+(i*10), 300, 300, 3);
    Letter O_2 = new Letter(color6,  checkModule("o2", data3), posx+oposX+(i*10), posy+90+(i*10), 300, 300, 3);
    Letter O_3 = new Letter(color6,  checkModule("o3", data2), posx+oposX+60+(i*10), posy+(i*10), 300, 300, 3);
    Letter O_4 = new Letter(color3,  checkModule("o4", data1), posx+oposX+60+(i*10), posy+90+(i*10), 300, 300, 3);

    //text(javascript ,50, 50);
	if(javascript!=null){
      	javascript.saveImg(dataJson);
    }

}


String checkModule(String modul, int criteri){
  String str= "";
  if(modul=="d1") {
     if (criteri<185) {
       str = "modul1x6.svg";
      } else {
      str = "modul1x6bi.svg";
    }
   }

  if(modul=="d2") {
    if (criteri<5) {
      str = "modul2.svg";
    } else if (criteri<15&&criteri>5) {
      str = "modul2bi.svg";
    } else {
      str = "modul2ple.svg";
    }
  }

  if(modul=="d3") {
    if (criteri>15) {
      str = "modul2inv.svg";
    } else if (criteri<5) {
      str = "modul2invbi.svg";
    } else {
      str = "modul2invple.svg";
    }
  }

  if(modul=="d4") {
     if (criteri<185) {
       str = "modul1x6bi.svg";
      } else {
      str = "modul1x6.svg";
    }
   }

  //E
  if(modul=="e1") {
    if (criteri>185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6s.svg";
    }
  }

  if(modul=="e2") {
    if (criteri>185) {
      str = "modul1x2.svg";
    } else {
      str = "modul1x2bi.svg";
    }
  }

  if(modul=="e3") {
    if (criteri<185) {
      str = "modul1x2.svg";
    } else {
      str = "modul1x2bi.svg";
    }
  }

  if(modul=="e4") {
    if (criteri<185) {
      str = "modul1x2.svg";
  } else {
      str = "modul1x2bi.svg";
    }
  }

  if(modul=="e5") {
    if (criteri>185) {
      str = "modul1x6s.svg";
    } else {
      str = "modul1x6s.svg";
    }
  }

  //M
  if(modul=="m1") {
    if (criteri<185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6bi.svg";
    }
  }

  if(modul=="m2") {
    if (criteri<70) {
      str = "modul4.svg";
    } else if (criteri>70&&criteri<85) {
      str = "modul4bi.svg";
    } else {
      str = "modul4ple.svg";
    }
  }

  if(modul=="m3") {
    if (criteri<185) {
      str = "modul1.svg";
    } else {
      str = "modul1bi.svg";
    }
  }

  if(modul=="m4") {
    if (criteri>85) {
      str = "modul4inv.svg";
    } else if (criteri<70) {
      str = "modul4invbi.svg";
    } else {
      str = "modul4invple.svg";
    }
  }

  if(modul=="m5") {
    if (criteri>185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6bi.svg";
    }
  }

  //O
  if(modul=="o1") {
    if (criteri<70) {
      str = "modul3.svg";
    } else if (criteri>70&&criteri<85) {
      str = "modul3bi.svg";
    } else {
      str = "modul3ple.svg";
    }
  }

  if(modul=="o2") {
    if (criteri>85) {
      str = "modul3inv.svg";
    } else if (criteri<70) {
      str = "modul3invbi.svg";
    } else {
      str = "modul3invple.svg";
    }
  }

  if(modul=="o3") {
    if (criteri>15) {
      str = "modul2.svg";
    } else if (criteri<5) {
      str = "modul2bi.svg";
    } else {
      str = "modul2ple.svg";
    }
  }

  if(modul=="o4") {
    if (criteri<5) {
      str = "modul2inv.svg";
    } else if (criteri<15&&criteri>5) {
      str = "modul2invbi.svg";
    } else {
      str = "modul2invple.svg";
    }
  }
  return str;

}

