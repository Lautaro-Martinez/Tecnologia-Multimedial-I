PFont titulo,subtitulo,autor;
PImage portada, estrellas;

int a = 50;
int posYsub = 320;
int posYaut = 20;
int transparencia = 0;


void setup(){
  size(600,800);
  
  titulo = loadFont("ScriptMTBold-48.vlw");
  autor = loadFont("BaskOldFace-48.vlw");
  subtitulo = loadFont("BellMTBold-48.vlw");
  portada = loadImage("Portada.jpg");
  estrellas = loadImage("Estrellas.png");
}

void draw(){
  background(255);
  image(portada,0,0,width,height);
  a++;

  
     //autor
textAlign(CENTER);
  if(a >= 100){
  fill(#0A9BC1);
  textFont(autor);
  textSize(20);
  text("ANTOINE DE SAINT-EXUPÉRY",width/2, posYaut);
}
  if(a >= 100){  
  posYaut++;
  if (posYaut >= 75){
  text("ANTOINE DE SAINT-EXUPÉRY",width/2, 75);
  posYaut = 75;
  }
}
     //autor

     //titulo
if(a >= 60){
  fill(0, transparencia);
  textFont(titulo);
  textSize(82);
  text("El Principito",width/2, 190);
  transparencia++;
       //titulo

       //subtitulo
}
  fill(0);
  textFont(subtitulo);
  textSize(12);
  if(a >= 155){
  text("CON LAS ACUARELAS DEL AUTOR",width/2, posYsub);
}
 if(a >= 155){
  posYsub--;
  if(posYsub <= 235){
    text("CON LAS ACUARELAS DEL AUTOR",width/2, 235);
    posYsub = 235;
  }
}
        //subtitulo
        
        //Presion en cabeza
   if(mousePressed){
     if(mouseX > 425){
       if(mouseX < 490){
         if(mouseY > 230){
           if(mouseY < 300){
          image(estrellas,0,0,width,height);
        }
      }
    }
  }
}           
          //Presion en cabeza
 
//println(a);
//println(mouseX);
//println(mouseY);
}

          
