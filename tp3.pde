//tp3
//sabrina quiñonez
// comision 5 
//https://youtu.be/f1LINGWb9cQ

PImage circulos;
int[] colores={
  color(37, 81, 80),
  color(34, 51, 79),
  color(32, 29, 74),
  color(46, 34, 78),
  color(67, 38, 47),
  color(103, 32, 32),
  color(150, 26, 0),
  color(170, 33, 0),
  color(206, 83, 0),
  color(216, 150, 0),
  color(221, 199, 0),
  color(137, 184, 2),
  color(74, 135, 65),
  color(49, 106, 91)  
  };
  
  int cambio;
  float diametro;

void crearCirculo(float x,float y, float diametro,int r, int v,int a){
 noStroke();
 fill(r,v,a);
 
 ellipse(x,y,diametro,diametro);

  }


void setup(){
  size(800,400);
  circulos = loadImage("circulos.jpg");
  circulos.resize(400,400);
  cambio=0;
  diametro=380;
}

void draw(){
  background(220,216,211);
  image(circulos,0,0);
  

  float x = width/2 + width/4;
  float y= height/2;
  float d=diametro;
  for(int i = 13; i >= 0;i--){
   int r = (int) red(colores [abs(i-13+cambio)%14]);
   int v = (int) green(colores [abs(i-13+cambio)%14]);
   int a = (int) blue(colores[abs(i-13+cambio)%14]);
  
  
   crearCirculo(x,y,d+i,r,v,a );
   d= d-27;


  }
  push();
    fill(0);
    circle(width/2, height * 0.82 , 70);
    fill(202,216,211);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height * 0.82 );
    pop();
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (diametro >=400){
    diametro=400;
  }
  if (diametro<=80){
    diametro=80;
  }
  diametro=diametro+4*e;
  
  
}
void keyPressed() {
  if (key >= '0' && key <= '9') {
  cambio=cambio+1;
  }

}

void mouseClicked() {
  if (dist(mouseX, mouseY, width/2, height * 0.82) < 70) {
   // alpha = 0;
    cambio = 0;
    diametro = 380; 
  }
}
