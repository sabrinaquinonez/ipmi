//comision 5
//trabajo practico 2
// sabrina quiñonez

PImage fondo, imagen1, imagen2, imagen3;
PFont fuente;
int pantalla, tiempo,diametro;

void setup () {
  size (640,480);
  fuente= loadFont ("Candara-Bold-48.vlw");
  textFont (fuente);
  textSize (23);
  fill(0);
  textAlign (LEFT, TOP);
  fondo= loadImage("fondo.jpg");
  fondo.resize(640,480);
  imagen1=loadImage("imagen1.jpg");
  imagen2=loadImage("imagen2.jpg");
  imagen3=loadImage("imagen3.jpg");
  diametro=width/6;
  tiempo = 0;
  pantalla = 0;
  //background (0);
}
   
void draw() {
  if (pantalla == 0)
    image(fondo,0,0);
     
  
  if (pantalla == 1){
    image(imagen1,0,0);
    
    
    push();
    fill(255);
    textSize(17);
    text("Caperucita, es una niña cuya madre envía con provisiones \n a la casa de su abuela  que se encuentra enferma. ",20, mouseY);
  text("Así, debe atravesar el bosque para llegar a su destino. \n  Sin embargo, allí se cruza con un astuto lobo \n  que la interroga y descubre sus planes.",10,415);
    pop();
 }  
 
     if(pantalla == 2){
      image(imagen2,0,0,640,480);
      push();
      fill (255);
      textSize (17);
      text("El Lobo Feroz la reta a una carrera hasta la casa de la abuela. \n El Lobo conoce dos caminos, el largo y el corto; ",mouseX,20);
     text("engaña a Caperucita Roja diciéndole que tome el corto y que él tomaría el largo;\n astutamente, le enseña los caminos al revés y Caperucita Roja,\n sin saberlo, va por el camino largo.",mouseX,390);
     pop();
     }
     
     if(pantalla == 3){
       image(imagen3,0,0,640,480);
       push();
       textSize (16);
       text("El Lobo llega antes a casa de la abuela,\n  se hace pasar por Caperucita Roja y pregunta si puede pasar.",20,20);
      text("La abuela le permite pasar, el Lobo Feroz entra y se traga a la abuela de un solo bocado. \n A continuación,  Caperucita Roja llega a la casa,  \ny el Lobo  se lanza a Caperucita y se la come.",20,425);
       pop();
       
      push();
    circle(width/2, height/2, diametro);
    fill(255,0,0);
    textSize(18);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height/2 );
    pop();
      
     }
       
  tiempo++;
  
  if (tiempo >= 255) {
    tiempo = 0;
    if (pantalla != 3) {
      pantalla++;
    }    
  }
}

void mouseClicked() {
  if (pantalla > 2) {
    pantalla = 0;
  }
  if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
     
