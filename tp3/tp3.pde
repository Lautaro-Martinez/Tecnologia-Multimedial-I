int tam = 16;
int dist = 75;
int grosor = 12;
color colorPuntos = 255;
color fondo = 0;
color colorLinea = 150;
color variacionColor,variacionColor2;

void setup() {
  size(600, 450);
}
void draw() {
  background(fondo);
  strokeWeight(grosor);
  stroke(colorLinea);
  variacionColor = round(map(mouseX, 0, width, 0, 255));
  variacionColor2 = round(map(mouseX, 0, width, 255, 0));


  for (int ly = 1; ly < 6; ly++) {
    for (int lx = 1; lx < 8; lx++) {
      line(0, ly * dist, width, ly * dist);
      line(lx * dist, 0, lx * dist, height);
    }
  }
  for (int ex = 1; ex < 8; ex++) {
    for (int ey = 1; ey < 6; ey++) {
      noStroke();
      fill(colorPuntos);
      ellipse(dist * ex, dist * ey, tam, tam);
    }
  }
  if (mousePressed && mouseButton == LEFT) {//////////////////////Pleno blanco//////////////////////
    colorPuntos = 0;
    fondo = 255;
    colorLinea = 100;
  } else if (mousePressed && mouseButton == RIGHT) {/////////////////Pleno negro//////////////////////
    colorPuntos = 255;
    fondo = 0;
    colorLinea = 150;
  } else if (mousePressed && mouseButton == CENTER) {/////////////////Grises aleatorios/////////////////////
    colorPuntos = variacionColor2;
    fondo = variacionColor;
    colorLinea = round(random(100, 150));
  }
  if (keyPressed && keyCode == UP) {//////////////Aumento de tamaño lineas y puntos///////////////////
    grosor = 22;
    tam = 26;
  } else if (keyPressed && keyCode == DOWN) {////////////////// Vuelta a estado original////////////////////////
    grosor = 12;
    tam = 16;
    colorPuntos = 255;
    fondo = 0;
    colorLinea = 150;
  }



  println(variacionColor, variacionColor2);
}
