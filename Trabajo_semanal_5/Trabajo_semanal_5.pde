int medida = 120;
int ejeX = 200;
int posX = 200;
int posX2 = 65;
int posX3 = 335;
int posY = -120;
int posY2 = -360;
int posY3 = -600;
int ejeY = 570;
int vel = 3;
int byn = 0;
int time = 0;
int score = 0;
float brillo = 0;
int life = 100;
PImage fondo;

void setup(){
size(400,600);
fondo = loadImage("zelda.jpg");

}
void draw(){
background(255);

///////////////Pantalla Inicio//////////////////

strokeWeight(5);
stroke(0);
textAlign(CENTER);
textSize(40);
fill(byn);
text("Click to start",width/2,height/2);



///////////////Lógica juego////////////////////
rectMode(CENTER);
if(time >= 0){
  fill(255,0,0);
  rect(posX,posY,medida,medida);  
}
if(time >= 0){
  fill(255,0,0);
  rect(posX2,posY2,medida,medida);  
}
if(time >= 0){
  fill(255,0,0);
  rect(posX3,posY3,medida,medida);
}
if(posY > height + 60){
  fill(255);
  rect(posX,posY,medida,medida);
  posY = -120;   
}
if(posY2 > height + 60){
  fill(255,0,0);
  rect(posX2,posY2,medida,medida); 
  posY2 = -120;   
}
if(posY3 > height + 60){
  fill(255,0,0);
  rect(posX3,posY3,medida,medida);
  posY3 = -120;   
}


stroke(0);
strokeWeight(5);
rectMode(CENTER);
fill(0,0,255,50);
rect(ejeX,ejeY,50,50);
fill(255);

time = time + 1;
if(byn == 255){
  posY=posY + vel;
  posY2=posY2 + vel;
  posY3=posY3 + vel;
}
if(ejeX==35){
score++;
}else if(ejeX==365){
 score++;
}


///////////////////////Movimiento////////////////////////////
if(keyPressed && key == CODED && keyCode == RIGHT){
 ejeX = ejeX + 5;
}else if(keyPressed && key == CODED && keyCode == LEFT){
 ejeX = ejeX - 5;
}
if(ejeX>=365){
ejeX=365;
}else if(ejeX<=35){
ejeX=35;
}


//////////////////Contador///////////////////
stroke(0);
strokeWeight(10);
line(0,0,0,height);
line(width,0,width,height);
line(0,0,width,0);
fill(0);
textSize(20);
textAlign(LEFT);
text("Score:" + score,10,25);
text("Life:" + life, 10, 55);
stroke(0,0,255);
strokeWeight(4);
line(7,height - 55,7,height-5);
line(width - 7,height - 55,width - 7,height-5);

////////////////Victoria/////////////////////
if(score>=1200){
time=0;
score=1200;
posY =height+120;
posY2=height+120;
posY3=height+120;
textAlign(CENTER);
textSize(40);
brillo = brillo + 1.5;
image(fondo,0,0,width,height);
fill(255,brillo);
text("Congratulations!\nScore: 1200\nLife:" + life, width/2,height/2-75);
}
////////////////Derrota//////////////////////
if(posY+65 > ejeY && posY - 90 < ejeY +25 ){
  if(posX+90 > ejeX && posX -65< ejeX +25){
    rectMode(CORNER);
    fill(255,0,0,50);
    rect(0,0,width,height);
    life = life - 1;
  }
}
if(posY2+65 > ejeY && posY2 - 90 < ejeY +25 ){
  if(posX2+90 > ejeX && posX2 -65< ejeX +25){
      rectMode(CORNER);
    fill(255,0,0,50);
   rect(0,0,width,height);
   life = life -1;
  }
}
if(posY3+65 > ejeY && posY3 - 90 < ejeY +25 ){
  if(posX3+90 > ejeX && posX3 -65< ejeX +25){
  rectMode(CORNER);
  fill(255,0,0,50);
  rect(0,0,width,height);
  life = life -1;
  }
}
if(life == 0){
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over\nLife: 0", width/2,height/2);
  posY =height+120;
  posY2=height+120;
  posY3=height+120;
  time = 0;
}
  
println(time, vel, posX, posX2, posX3, ejeX);
}

/////////////////////Inicio/Reset////////////////////
void mouseClicked(){
  byn=255;
  time=0;
  posY = -120;
  posY2 = -360;
  posY3 = -600;
  score = 0;
  life = 100;

}
