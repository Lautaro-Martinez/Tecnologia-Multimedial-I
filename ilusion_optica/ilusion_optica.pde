int cant = 10;
int tam, tam2, tam3, tamEllipse;
int angulo = 0;
int angulo2 = 0;
int maximo, minimo;
int fondo = 0;
color Color = 255;
color colorBorde = 0;
color colorEllipse = 0;
int mapeo;
float distancia;
int contador = 1;
int tamEllipse2;


void setup() {
  //fullScreen();
  size(800, 800);
  tam = width/cant;
  tam2 = 800;
  tam3= width/cant;
  tamEllipse = 800;
  tamEllipse2 = 400;
  maximo = 100;
  minimo = 0;
}

void draw() {
  background(fondo);
  stroke(colorBorde);
  strokeWeight(2);
  for (int i = 0; i <= cant; i++) {
    for (int j = 0; j <= cant; j++) {
      pushMatrix();

      translate(i*tam, j*tam);
      if (i%2 == 0) {
        rotate(radians(angulo));
      } else {
        rotate(radians(360 - angulo));
      }
      rectMode(CENTER);
      rect(0, 0, tam, tam);


      popMatrix();
    }
  }
  for (int i = 0; i <= cant; i++) {
    for (int j = 0; j <= cant; j++) {
      fill(random(minimo, maximo));
      ellipse(i * tam, j * tam, tam3, tam3);
    }
  }
  angulo++;
  angulo2--;
  stroke(0);
  strokeWeight(10);
  fill(Color, random(50, 150));
  stroke(colorEllipse);
  ellipse(width/2, height/2, tamEllipse, tamEllipse);
  translate(width/2, height/2);
  rotate(radians(360 - angulo2));
  noStroke();
  rect(0, 0, tam2/2, tam2/2);
  noStroke();

  if (mousePressed && mouseButton == LEFT) {/////////////invierte el giro a mayor velocidad y los de atras/////////////////////
    angulo-=6;
    angulo2+=4;
    fill(255, 0, 0, 50);
  } else if (mousePressed && mouseButton == RIGHT) {/////////////////////acelera el giro y se oponen los de atras///////////////////////
    fill(0, 255, 0, 50);
    angulo+=4;
    angulo2-=2;
  } else if (mousePressed && mouseButton == CENTER) {////////////////////////reinicia el movimiento//////////////////////////
    angulo = 0;
    angulo2 = 0;
    tamEllipse = 800;
    tam3 = width/cant;
    colorEllipse = 0;
  }
  if (keyPressed && key == CODED && keyCode == DOWN) {///////////////////////variación de tamaño de las elipses y cambio de valor///////////////////////////
    tam3--;
  }

  ///////////////////////////////////////////////////////Se invierten los valores en ciertas condiciones///////////////////////////////////////////////////////
  if (tam3 == width/cant) {
    tam3 = width/cant;
  } else if (tam3 == -width/cant) {
    tam3 = width/cant;
  }
  if (tam3 < 0) {
    maximo = 220;
    minimo = 155;
    fondo = 255;
    Color = 0;
    colorBorde = 200;
  } else {
    maximo = 100;
    minimo = 0;
    fondo = 0;
    Color = 255;
    colorBorde = 0;
  }
  tamEllipse-=5;
  if (tamEllipse <= -800) {
    tamEllipse = 800;
  }
  if (tamEllipse <= tamEllipse2) {
    colorEllipse = 255;
  }
  if (tamEllipse <=  -400) {
    colorEllipse = 0;
  }
  ///////////////////////////////////////////////////////Se invierten los BYN en ciertas condiciones///////////////////////////////////////////////////////
  distancia = dist(width/2, height/2, mouseX, mouseY);
  stroke(1);
  strokeWeight(10);
  ellipse(0, 0, tamEllipse2, tamEllipse2);


  println(tam3, tamEllipse, distancia);
}
