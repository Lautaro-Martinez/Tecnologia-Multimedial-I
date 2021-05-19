PImage imagen1,imagen2,imagen3,imagen4,imagen5,imagen6,imagen7,imagen8,imagen9,imagen10,imagen11;
PFont fuente;
int diam = 50;
int a = 0;
int pag = 1;
int resoY;
int texto1 = 35;
int texto2 = 60;
float siguiente, previo;
int ptextoY;

void setup(){
  //fullScreen();
  size(800,600);
  
  imagen1 = loadImage("imagen1.png");
  imagen2 = loadImage("imagen2.png");
  imagen3 = loadImage("imagen3.png");
  imagen4 = loadImage("imagen4.png");
  imagen5 = loadImage("imagen5.png");
  imagen6 = loadImage("imagen6.png");
  imagen7 = loadImage("imagen7.png");
  imagen8 = loadImage("imagen8.png");
  imagen9 = loadImage("imagen9.png");
  imagen10 = loadImage("imagen10.png");
  imagen11 = loadImage("imagen11.png");
  fuente = loadFont("BerlinSansFB-Reg-48.vlw");
  resoY = height - 100;
  ptextoY = 100;
  fill(255);
  textFont(fuente);
  textAlign(CENTER,CENTER);
  //textMode(CENTER);
}

void draw(){
background(0);

//////////////////////////////////////////////imagenes///////////////////////////////////////////

////////////imagen 1//////////////
   if(pag == 1){
     image(imagen1,0,0,width,resoY);
     ptextoY = 100;
}
///////////imagen 2///////////////
   if(pag == 2){
     fill(255);
     textSize(texto1);
     image(imagen2,0,0,width,resoY);
     text("Largos cabellos , poder colosal, su barba\n rojiza, ¡es un dios del metal!",width/2,resoY + 50);
}
//////////imagen 3////////////////
   if(pag == 3){
     fill(255);
     textSize(texto1);
     image(imagen3,0,0,width,resoY);
     text("Thor Dios del trueno y de la humanidad,\nOdin es su padre y vive en Asgard",width/2,resoY + 50);
}
//////////imagen 4////////////////
   if(pag == 4){
     fill(255);
     textSize(texto1);
     image(imagen4,0,0,width,resoY);
     text("Su destino es morir en Ragnarok, dando\nmuerte a Jormungander",width/2,resoY + 50);
}
//////////imagen 5////////////////
   if(pag == 5){
     fill(255);
     textSize(texto1);
     image(imagen5,0,0,width,resoY);
     text("Con su martillo no puede fallar y más\nde una vez, lo han intentado robar",width/2,resoY + 50);
}
//////////imagen 6////////////////
   if(pag == 6){
     fill(255);
     textSize(texto1);
     image(imagen6,0,0,width,resoY);
     text("¡Un gigante una vez se lo ROBÓ!",width/2,resoY + 50);
}
//////////imagen 7////////////////
   if(pag == 7){
     fill(255);
     textSize(texto1);
     image(imagen7,0,0,width,resoY);
     text("Loki y Thor van al castillo de gigantes y se\nlas ingenian para recuperarlo",width/2,resoY + 50);
}
//////////imagen 8////////////////
   if(pag == 8){
     fill(255);
     textSize(texto1);
     image(imagen8,0,0,width,resoY);
     text("Junto con Loki más viajes realizó, marchan a\nJotunheim y un gigante de hielo los desafió",width/2,resoY + 50);
}
//////////imagen 9////////////////
   if(pag == 9){
     fill(255);
     textSize(texto1);
     image(imagen9,0,0,width,resoY);
     text("Con magia poderosa, pruebas les asignará\nquedó sorprendido con su forma de luchar",width/2,resoY + 50);
}
//////////imagen 10////////////////
   if(pag == 10){
     fill(255);
     textSize(texto1);
     image(imagen10,0,0,width,resoY);
     text("Quedan miles de historias sobre Thor\nque no puedo contar",width/2,resoY + 50);
}
//////////imagen 11////////////////
   if(pag == 11){
     fill(255);
     textSize(texto1);
     image(imagen11,0,0,width,resoY);
     text("Si sufres ataques violentos, recuerda que\ntu no eres Thor, el es un Dios y tu no",width/2,resoY + 50);
     ptextoY = 100;
}
//////////imagen 12////////////////
   if(pag == 12){
     textSize(texto1);
     fill(255,a);
     text("FIN",width/2,resoY + 50);
     textSize(texto2);
     fill(255);
     text("¡TOMA TU MEDICACIÓN!", width/2,ptextoY);
     a+=2;
     ptextoY+=2;
     if(ptextoY >=300){
       ptextoY = 300;
     
     }
   }
//////////////////////////////////////////////imagenes///////////////////////////////////////////

////////////botones////////////////

fill(255);
ellipse(diam,height - diam,diam,diam);
ellipse(width - diam,height - diam,diam,diam);
  
println(mouseX,mouseY, pag, a);

 if(pag == 13){
   pag = 1;
 }
 if(pag == 0){
     pag = 12;
 }
 if(a==256){
   a=0;
 
 }

}

void mouseClicked(){
  if(mouseX >= 25 && mouseX <= 75 && mouseY >= 525 && mouseY <= 575){
    pag--;
    fill(200,0,0);
    ellipse(diam,height - diam,diam,diam);
  }
  if(mouseX >= 725 && mouseX <= 775 && mouseY >= 525 && mouseY <= 575){
    pag++;
    fill(0,200,0);
    ellipse(width - diam,height - diam,diam,diam);
  }
 
  
}
