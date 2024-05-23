//variables

PImage img, img2, img3;
PFont fuente;

 // \n para bajar un renglon al texto
 
String P_uno = "El mejor videojuego flash del año 2009 \n para jugar tú y un amigo";

//pantalla 2 contiene dos textos.
String P_dos_1 = "Otro jugador \n utiliza las flechas del teclado \n para moverse";
String P_dos_2 = "Un jugador \n utiliza las letras AWD \n para moverse";

String P_tres = "Resuelve los diferentes puzzles con tu amigo \n utilizando a favor el elemento elegido por cada jugador \n para atravesar diferentes zonas en simultáneo \n y así llegar a la meta juntos";

int coso;
//otros alpha
int alpha;
int alpha2;
int alpha3;

//boton rectangular
int esquinaX1 = 200;
int esquinaY1 = 100;
int ancho = 200;
int alto = 100;

void setup(){
  
  //size debe ser de 640x480
 size ( 640,480 );
 fuente = loadFont("Impact.vlw");
 textFont(fuente);
  alpha = 255;
  alpha2 = 255;
  alpha3 = 255;

  img = loadImage("pantallauno.jpg");
  img2 = loadImage("pantallados.jpg");
  img3 = loadImage("pantallatres.jpg");
   
  println(frameCount);
}

void draw(){

  //background(0);
  coso = frameCount/4;
  
  //PRIMERA PANTALLA
  if(frameCount >=1){ 
    image(img, 0, 0 );
    println(coso);
    fill(0,255,0);
    textSize(coso);
    textAlign( CENTER, TOP );
    text( P_uno, 320, 340);
    }
    
 // SEGUNDA PANTALLA
 
 if ( frameCount >= 400 ) {//segundos que tarda en pasar a otra pantalla
  image(img2, 0, 0);
  textSize(24);
  fill(0,255,0, alpha2);
  textAlign( 240, 120 );
  text( P_dos_1, 320, 340);
  text( P_dos_2, 50, 340);
  
   if ( frameCount >= 750 ){
  alpha2 = alpha2 - 2;
  }
  }
 

 // TERCERA PANTALLA
 
  if ( frameCount >= 950 ){ //segundos que tarda en pasar a otra pantalla
 image(img3, 0, 0 );
 textSize(24);
 fill(0,255,0, alpha3);
 textAlign(CENTER); 
 text( P_tres, 320, 340);
 
  if ( frameCount >= 1500 ){
  alpha3 = alpha3 - 2;
}
 

}
if (frameCount >= 1700){
  
  background(100,0,0);
 
   fill(0, 255, 0);
  rect(esquinaX1, esquinaY1, ancho, alto);
  textSize(80);
text("¿VER DE VUELTA?",320, 340);
  }
  }
  
  void mousePressed(){
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
  println("se presiono el rectangular");
  frameCount = 0;  
  alpha = 255;
  alpha2 = 255;
  alpha3 = 255;
}
}



//volver al estado uno d las pantallas, mouseprsseed es igual al stado cero
