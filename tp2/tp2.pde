//comision 5
//trabajo practico 2
// sabrina quiñonez

PImage fondo, imagen01, imagen02, imagen03, imagen04;
PFont fuente;
int pantalla, tiempo;

void setup () {
  size (640,480);
  fuente= loadFont ("Candara-Bold-48.vlw");
  textFont (fuente);
  textSize (23);
  fill(0);
  textAlign (LEFT, TOP);
  fondo= loadImage("fondo.jpg");
  fondo.resize(640,480);
  imagen01=loadImage("imagen01.jpg");
  //imagen02=loadImage("imagen02.jpg");
  imagen03=loadImage("imagen03.jpg");
  imagen04=loadImage("imagen04.jpg");
  tiempo = 0;
  pantalla = 0;
  //background (0);
}
   
void draw() {
  if (pantalla == 0)
    image(fondo,0,0);
     
  
  if (pantalla == 1){
    image(imagen01,0,0);
    
    
    push();
    text("Caperucita, es una niña cuya madre envía con provisiones \n a la casa de su abuela  que se encuentra enferma. \n Así, debe atravesar el bosque para llegar a su destino.  \nSin embargo, allí se cruza con un astuto lobo \n que la interroga y descubre sus planes ",0, 0 );
    pop();
 }  
     if(pantalla == 2) 
      image(imagen03,0,0);
      text("El Lobo Feroz la reta a una carrera hasta la casa de la abuela. \n El Lobo conoce dos caminos, el largo y el corto; \n engaña a Caperucita Roja diciéndole que tome el corto y que él tomaría el largo; \n astutamente, le enseña los caminos al revés y Caperucita Roja, \n sin saberlo, va por el camino largo",0,0);
     
     if(pantalla == 3)
       image(imagen04,0,0);
       
       
   delay(1500);
   pantalla++;
}
     
