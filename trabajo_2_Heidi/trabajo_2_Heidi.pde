void setup(){
size(600,600);
background(23,180,193);

}

void draw(){
strokeWeight(3);
stroke(0);

fill(0);//color pelo
//noFill();
beginShape();//pelo
vertex(205,350);
bezierVertex(205,350,140,320,140,275);
bezierVertex(120,280,130,295,125,290);
bezierVertex(105,240,130,225,130,225);
bezierVertex(115,225,75,160,115,90);
bezierVertex(120,120,165,130,190,105);
bezierVertex(280,-20,510,50,525,225);
bezierVertex(530,270,550,320,570,310);
bezierVertex(580,320,570,360,540,380);
bezierVertex(545,382,555,380,560,377);
bezierVertex(555,400,530,410,510,405);
bezierVertex(513,417,522,416,525,415);
bezierVertex(520,423,505,428,485,420);
vertex(493,428);
bezierVertex(480,432,475,432,470,430);
endShape();//pelo


fill(#F7D0C0);//color cuello
beginShape(); //cuello
vertex(365,463);
vertex(375,475);
vertex(475,443);
bezierVertex(470,450,450,400,455,390);
endShape(CLOSE); //cuello


fill(#F7D0C0); //color cara
beginShape(); //cara
vertex(205,350);
bezierVertex(180,340,165,300,165,280);
bezierVertex(166,290,180,295,190,295);
bezierVertex(160,230,220,152,220,149);
bezierVertex(280,160,310,220,280,230);
bezierVertex(290,240,340,235,365,220);
bezierVertex(385,230,400,235,440,280);
bezierVertex(450,300,460,340,455,360);
bezierVertex(475,360,460,315,490,310);
bezierVertex(520,310,515,400,470,375);
bezierVertex(450,450,240,550,220,375);
bezierVertex(220,370,215,360,205,350);
endShape();  //cara

fill(0); //boca
stroke(0);
bezier(300,410,325,450,370,420,370,365);//boca

fill(255,0,0);//lengua
stroke(0);
beginShape();
vertex(330,428);
bezierVertex(335,390,360,390,365,390);
bezierVertex(360,390,365,420,330,428);
endShape();//lengua


fill(#F5F1C1);
beginShape();//camisa
vertex(375,475);
vertex(490,437);
vertex(610,570);
vertex(332.5,610);
bezierVertex(340,580,340,525,375,475);
endShape(); //camisa



fill(#CB2121);
beginShape();//chaleco
vertex(332.5,610);
bezierVertex(340,490,400,455,506,455);
vertex(630,590);
vertex(332.5,610);
endShape();//chaleco


fill(#F5F1C1);
beginShape();//manga
vertex(430,605);
bezierVertex(340,430,590,430,610,580);
vertex(585,604);
endShape();//manga

stroke(0);
fill(0);
line(335,580,355,565);
ellipse(355,565,4,14);

stroke(#F58357);// cachetes
fill(#F58357);// cachetes

}

void mouseMoved(){
ellipse(412.5,337.5,33,35);
beginShape();
vertex(240,380);
bezierVertex(235,381,235,409,250,410);
bezierVertex(265,409,255,375,240,380);
endShape();



}
