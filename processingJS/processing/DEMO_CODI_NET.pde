ArrayList dataJson;
String processingString = "Hello from Processing!";

void setup() {

  size(800, 600);

  smooth();
  //noLoop();
  //colorMode(HSB, 360, 100, 100, 100);





  dataJson = new ArrayList();

  //beginRecord(PDF, "filename.pdf");

  //demo(200, 200);

}

void draw() {
  print("begin- ");

  printMessage(jsString + " test " + processingString);

  //background(50);
  // for(int p=0, end=dataJson.size(); p<end; p++) {
  //   Point pt = (Point) dataJson.get(p);
  //   if(p<end-1) {
  //     Point next = (Point) dataJson.get(p+1);
  //     line(pt.x,pt.y,next.x,next.y);
  //   }
  //   pt.draw();
  // }
  // float posx1 = random (0, 1000);
  // float posy1 = random (0, 700);

  // int posx2 = (int)posx1;
  // int posy2 = (int)posy1;


  //for (int i =2; i<1000; i+=3){
 // demo(200, 200);
  //posx1 = random (0,width);
  //posy1 = random(0,height);
  //posx2 = (int)posx1;
  //posy2 = (int)posy1;
  //}

  //endRecord();
}

void getData (int data1, int data2, int data3, int data4, int data5 ) {
    println(data1);

    //demo(200, 200);
    int posx=200;
    int posy=200;
background(2);

  //COLOR
  int valorA =50;
  int valorB =valorA+180;

  if (valorA>180) {
    valorB = valorA-180;
  } else if (valorA<180) {
    valorB = valorA+180;
  }
//console.log(getData1,getData2,getData3,getData4,getData5);

  //DATOS
  // XMLElement json = XMLElement( "resultsBicingShort.json");
  // XMLElement json1 = XMLElement( "http://memo.weird.es/three/jsons/resultsTransit.json");
  // XMLElement json2 = XMLElement( "http://memo.weird.es/three/jsons/resultsWeather.json");
  // XMLElement json3 = XMLElement( "http://memo.weird.es/three/crons/cronDistance.php");
  // XMLElement json4 = XMLElement( "http://memo.weird.es/three/jsons/resultsHyperlapse.json");
  //println(json.getChild(0));
  //XMLElement bik = json.getChild(0);
  //int criteri1 = bik.getInt("bikes");
  // int criteri2 = json1.getInt("transit");
  // int criteri3 = json2.getInt("humidity");
  // int criteri4 = json3.getInt("totalOnline");
  // float criteri5 = json2.getFloat("temp");
  // float criteri6 = json3.getFloat("distance");

  int criteri1 = data1;
  int criteri2 = data2;
  int criteri3 = data3;
  int criteri4 = data4;
  float criteri5 = data5;
  float criteri6 = 6;

  //PImage webImg,maskImage;
  //JSONArray values = json4.getJSONArray("images");

  //for (int i = 0; i < values.size(); i++) {

  //for (int i = 0; i < 1; i++) {
/*
    JSONObject imgs = values.getJSONObject(i);
    String url = imgs.getString("img");
*/
   // webImg = loadImage("http://processingjs.org/images/exhibition/virion.png", "png");


    Letter D_1 = new Letter(valorA, 100, checkModule(1, criteri2), posx+(i*10), posy+(i*10), 500,500);
    addChild(D_1);
    /*Letter D_2 = new Letter(valorA, 50, checkModule(2, criteri1), posx+30+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter D_3 = new Letter(valorB, 50, checkModule(3, criteri1), posx+30+(i*10), posy+90+(i*10), webImg.width, webImg.height);
    Letter E_1 = new Letter(valorA, 100, checkModule(4, criteri2), posx+270+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter E_2 = new Letter(valorA, 60, checkModule(5, criteri2), posx+300+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter E_3 = new Letter(valorA, 60, checkModule(6, criteri2), posx+300+(i*10), posy+60+(i*10), webImg.width, webImg.height);
    Letter E_4 = new Letter(valorA, 60, checkModule(7, criteri2), posx+300+(i*10), posy+150+(i*10), webImg.width, webImg.height);
    Letter M_1 = new Letter(valorA, 100, checkModule(8, criteri2), posx+470+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter M_2 = new Letter(valorA, 50, checkModule(9, criteri3), posx+500+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter M_3 = new Letter(valorA, 50, checkModule(10, criteri2), posx+545+(i*10), posy+60+(i*10), webImg.width, webImg.height);
    Letter M_4 = new Letter(valorB, 50, checkModule(11, criteri3), posx+575+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter M_5 = new Letter(valorA, 100, checkModule(12, criteri2), posx+620+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter O_1 = new Letter(valorA, 50, checkModule(13, criteri3), posx+740+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter O_2 = new Letter(valorB, 50, checkModule(14, criteri3), posx+740+(i*10), posy+90+(i*10), webImg.width, webImg.height);
    Letter O_3 = new Letter(valorA, 50, checkModule(15, criteri2), posx+800+(i*10), posy+(i*10), webImg.width, webImg.height);
    Letter O_4 = new Letter(valorB, 50, checkModule(16, criteri1), posx+800+(i*10), posy+90+(i*10), webImg.width, webImg.height);

    PImage maskedImage1 = webImg.get();
    PImage maskedImage2 = webImg.get();
    PImage maskedImage3 = webImg.get();
    PImage maskedImage4 = webImg.get();
    PImage maskedImage5 = webImg.get();
    PImage maskedImage6 = webImg.get();
    PImage maskedImage7 = webImg.get();
    PImage maskedImage8 = webImg.get();
    PImage maskedImage9 = webImg.get();
    PImage maskedImage10 = webImg.get();
    PImage maskedImage11 = webImg.get();
    PImage maskedImage12 = webImg.get();
    PImage maskedImage13 = webImg.get();
    PImage maskedImage14 = webImg.get();
    PImage maskedImage15 = webImg.get();
    PImage maskedImage16 = webImg.get();

    image(D_1.graphicalMask, 0, 0);
    image(D_2.graphicalMask, 0, 0);
    image(D_3.graphicalMask, 0, 0);
    image(E_1.graphicalMask, 0, 0);
    image(E_2.graphicalMask, 0, 0);
    image(E_3.graphicalMask, 0, 0);
    image(E_4.graphicalMask, 0, 0);
    image(M_1.graphicalMask, 0, 0);
    image(M_2.graphicalMask, 0, 0);
    image(M_3.graphicalMask, 0, 0);
    image(M_4.graphicalMask, 0, 0);
    image(M_5.graphicalMask, 0, 0);
    image(O_1.graphicalMask, 0, 0);
    image(O_2.graphicalMask, 0, 0);
    image(O_3.graphicalMask, 0, 0);
    image(O_4.graphicalMask, 0, 0);

    maskedImage1.mask(D_1.graphicalMask);
    maskedImage2.mask(D_2.graphicalMask);
    maskedImage3.mask(D_3.graphicalMask);
    maskedImage4.mask(E_1.graphicalMask);
    maskedImage5.mask(E_2.graphicalMask);
    maskedImage6.mask(E_3.graphicalMask);
    maskedImage7.mask(E_4.graphicalMask);
    maskedImage8.mask(M_1.graphicalMask);
    maskedImage9.mask(M_2.graphicalMask);
    maskedImage10.mask(M_3.graphicalMask);
    maskedImage11.mask(M_4.graphicalMask);
    maskedImage12.mask(M_5.graphicalMask);
    maskedImage13.mask(O_1.graphicalMask);
    maskedImage14.mask(O_2.graphicalMask);
    maskedImage15.mask(O_3.graphicalMask);
    maskedImage16.mask(O_4.graphicalMask);

    image(maskedImage1, 0, 0);
    image(maskedImage2, 0, 0);
    image(maskedImage3, 0, 0);
    image(maskedImage4, 0, 0);
    image(maskedImage5, 0, 0);
    image(maskedImage6, 0, 0);
    image(maskedImage7, 0, 0);
    image(maskedImage8, 0, 0);
    image(maskedImage9, 0, 0);
    image(maskedImage10, 0, 0);
    image(maskedImage11, 0, 0);
    image(maskedImage12, 0, 0);
    image(maskedImage13, 0, 0);
    image(maskedImage14, 0, 0);
    image(maskedImage15, 0, 0);
    image(maskedImage16, 0, 0);*/

    /*
    maskedImage1.blend(D_1.graphicalMask, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    D_2.graphicalMask.blend(maskedImage2, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    D_3.graphicalMask.blend(maskedImage3, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    E_1.graphicalMask.blend(maskedImage4, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    E_2.graphicalMask.blend(maskedImage5, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    E_3.graphicalMask.blend(maskedImage6, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    E_4.graphicalMask.blend(maskedImage7, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    M_1.graphicalMask.blend(maskedImage8, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    M_2.graphicalMask.blend(maskedImage9, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    M_3.graphicalMask.blend(maskedImage10, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    M_4.graphicalMask.blend(maskedImage11, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    M_5.graphicalMask.blend(maskedImage12, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    O_1.graphicalMask.blend(maskedImage13, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    O_2.graphicalMask.blend(maskedImage14, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    O_3.graphicalMask.blend(maskedImage15, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    O_4.graphicalMask.blend(maskedImage16, 0, 0, webImg.width, webImg.height, 0, 0, D_1.graphicalMask.width, D_1.graphicalMask.height, ADD);
    */
    // println(url);

  //}

  // println(criteri1);
  // println(criteri2);
  // println(criteri3);
  // println(criteri4);
  // println(criteri5);
  // println(criteri6);



 }



// void keyPressed() {
//   if (key == 'z') {
//     guardar=true;
//     save("hsb_test_"+frameCount+".png");
//   }
//   if (key == 'p') {
//     background(50);
//   }
// }

String checkModule(int modul, int criteri){
  String str= "";
  if(modul==1) {
     if (criteri<185) {
       str = "modul1x6.svg";
      } else {
      str = "modul1x6bi.svg";
    }
   }

  if(modul==2) {
    if (criteri<5) {
      str = "modul2.svg";
    } else if (criteri<15&&criteri>5) {
      str = "modul2bi.svg";
    } else {
      str = "modul2ple.svg";
    }
  }

  if(modul==3) {
    if (criteri>15) {
      str = "modul2inv.svg";
    } else if (criteri<5) {
      str = "modul2invbi.svg";
    } else {
      str = "modul2invple.svg";
    }
  }

  //E
  if(modul==4) {
    if (criteri>185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6bi.svg";
    }
  }

  if(modul==5) {
    if (criteri>185) {
      str = "modul1x2.svg";
    } else {
      str = "modul1x2bi.svg";
    }
  }

  if(modul==6) {
    if (criteri<185) {
      str = "modul1x2.svg";
    } else {
      str = "modul1x2bi.svg";
    }
  }

  if(modul==7) {
    if (criteri<185) {
      str = "modul1x2.svg";
  } else {
      str = "modul1x2bi.svg";
    }
  }

  //M
  if(modul==8) {
    if (criteri<185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6bi.svg";
    }
  }

  if(modul==9) {
    if (criteri<70) {
      str = "modul4.svg";
    } else if (criteri>70&&criteri<85) {
      str = "modul4bi.svg";
    } else {
      str = "modul4ple.svg";
    }
  }

  if(modul==10) {
    if (criteri<185) {
      str = "modul1.svg";
    } else {
      str = "modul1bi.svg";
    }
  }

  if(modul==11) {
    if (criteri>85) {
      str = "modul4inv.svg";
    } else if (criteri<70) {
      str = "modul4invbi.svg";
    } else {
      str = "modul4invple.svg";
    }
  }

  if(modul==12) {
    if (criteri>185) {
      str = "modul1x6.svg";
    } else {
      str = "modul1x6bi.svg";
    }
  }

  //O
  if(modul==13) {
    if (criteri<70) {
      str = "modul3.svg";
    } else if (criteri>70&&criteri<85) {
      str = "modul3bi.svg";
    } else {
      str = "modul3ple.svg";
    }
  }

  if(modul==14) {
    if (criteri>85) {
      str = "modul3inv.svg";
    } else if (criteri<70) {
      str = "modul3invbi.svg";
    } else {
      str = "modul3invple.svg";
    }
  }

  if(modul==15) {
    if (criteri>15) {
      str = "modul2.svg";
    } else if (criteri<5) {
      str = "modul2bi.svg";
    } else {
      str = "modul2ple.svg";
    }
  }

  if(modul==16) {
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
