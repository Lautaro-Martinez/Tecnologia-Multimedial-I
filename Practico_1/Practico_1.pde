void setup(){
size(400,400);//Pantalla tamaño
background(200);

noFill();
strokeWeight(10);//Borde rectángulo principal
rect(0,0,400,400);

fill(0);


textSize(18.7);
text("Esto es un cuadrado verde", 10,100);//Texto 1
text("Esto es una ellipse azul:", 10,300);//Texto 2

strokeWeight(1);
fill(0,255,0);
rect(250,50,100,100);
fill(0,0,255);
ellipse(300,300,100,100);

}

void draw(){
  
}
