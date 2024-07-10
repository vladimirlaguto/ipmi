// https://youtu.be/MoQgym39a8c

// legajo: 119061/6
PImage opart;

color fillb;
color filln;

float diametro;
float distancia;

boolean colorcambio = false;

//------------------------
int squareX = 0; // Coordenada X de la esquina superior izquierda del cuadrado
int squareY = 0; // Coordenada Y de la esquina superior izquierda del cuadrado
int squareSize = 400; // Tamaño del lado del cuadrado


void setup(){
  opart = loadImage("opart.png"); 
  noStroke();
  size (800,400);
 background(255,0,0);
 fillb = color(255);
 filln = color(0);
 diametro = 20;
} 
void draw(){
//si mouse X es menor a 400 entonces se vuelve al estado original

diametro = map(mouseX,0, 400,0, 20);

//hacer un boolean para asi usar un return
  if( zona(400, 0, 400, 400) ){
    stroke(40);
  }else{
    noStroke();
   }


   if (mouseX <= 400){
     dibujo(0,0);
     }
  
   if (mouseX >= 400){
     
  for (int j = 0; j <= 10; j+=2){
  for (int i = 0; i <= 10; i+=2){

  fill(filln);
  rect(400+i*40,j*40,40,40); 
  fill(fillb);
  ellipse(400+i*40+20,j*40+20,diametro,diametro);
  
  fill(fillb);
  rect(400+i*40+40,j*40,40,40); 
  fill(filln);
  ellipse(400+i*40+20+40,j*40+20,diametro,diametro);
  
  fill(fillb);
  rect(400+i*40,j*40+40,40,40); 
  fill(filln);
  ellipse(400+i*40+20,j*40+20+40,diametro,diametro);
  
  fill(filln);
  rect(400+i*40+40,j*40+40,40,40); 
  fill(fillb);
  ellipse(400+i*40+20+40,j*40+20+40,diametro,diametro);
 
  }
  }
  }

  if (mouseButton == LEFT) {
 colorcambio = true;
 fillb = color(random(255), random(255), random(255));
 filln = color(random(255), random(255), random(255));
  
} else{
  colorcambio = false;
  }
     if (mouseButton == RIGHT) {
 colorcambio = true;
 fillb = color(255);
 filln = color(0);
  }
//delimita la zona en la que el mouspressed funciona
  float d = dist(mouseX, mouseY, squareX + squareSize / 2, squareY + squareSize / 2);
 if (d < squareSize / 2) {
   fillb = color(255);
   filln = color(0);
}

 image(opart, 0, 0);
}

boolean zona( float x, float y, float a, float h ) {
  boolean r;
    if( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h && (mouseButton == CENTER)){
    r = true;
  }else{
    r = false;
  }
  return r;
}
