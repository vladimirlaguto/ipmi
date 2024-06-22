// https://www.youtube.com/watch?v=9-RHbifHyRA

// legajo: 119061/6

PImage opart;
float diametro;
boolean activo=true;
//----------------------------------------
color circlecolorN; //color negro de las elipses
color circlecolorB; //color blanco de las elipses
color circlecolorR;
//-----------------------------------------

int squareX = 400; // Coordenada X de la esquina superior izquierda del cuadrado
int squareY = 0; // Coordenada Y de la esquina superior izquierda del cuadrado
int squareSize = 400; // Tamaño del lado del cuadrado
float distancia;


void setup() {
  
  size(800, 400);
  opart = loadImage("op.png"); 
  background(360,0,0);
  Dibujo(0,0);
  noStroke();
  frameRate(60);
  colorMode(HSB, 360,255, 255);
  circlecolorN = color(0,0,0);
  circlecolorB = color(360,0,0);
  circlecolorR = color(random(0,360),255,255);

}

void draw() {
//for(int i=0; 1<10; [cantidad de veces que se repite] i++ [la velocidad a la que llega a ese objetivo])

//&& = logica AND

//el mismo codigo que "dibujo de fondo" pero en este lo que cambia son las interacciones
float cx = map(mouseX, 0 , width, 0, 360);
float cy = map(mouseY, 0 , height, 0, 360);

if (mouseX > 400)
 
 circlecolorN = color(0,0,0);
  circlecolorB = color(360,0,360);

{
{
  
   diametro = map(mouseX,0, 400,0, 20);
   
   
}
}
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
 {
 {

    fill(cx , cx ,cy);
    rect(400, i*80, 40, 40);
    rect(400+80+j*80, i*80, 40, 40);
   
 }
 }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
 {
 {
    fill(cx, cy, cx); 
    rect(440, j*80, 40, 40);
    rect(440+80+i*80, j*80, 40, 40);
   
 }
 }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
 {
 {
    fill(cx,cy,cy); 
    rect(440,40+ j*80, 40, 40);
    rect(440+80+i*80,40+ j*80, 40, 40);
   
 }
 }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
 {   
 {
    fill(cx,cy,cx); 
    rect(400,40+ j*80, 40, 40);
    rect(400+80+i*80,40+ j*80, 40, 40);
  } 
  }
  
//FILAS DE ELIPSES


//primera filas normal con blanco y negro
if (activo && (mouseX > 400)) { 

 colorMode(HSB, 360);
 

  
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill( circlecolorB); 
    ellipse(460,60+j*80 , 20, 20);
    ellipse(460+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill( circlecolorN); 
    ellipse(420,60+j*80 , 20, 20);
    ellipse(420+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill( circlecolorB); 
    ellipse(420,20+j*80 , 20, 20);
    ellipse(420+i*80,20+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorN); 
    ellipse(420,60+j*80 , 20, 20);
    ellipse(460+i*80,20+j*80 , diametro, diametro);
     
  }
  }
  

//si mouseX es menor que 400, vuelve a su estado normal
 
 }else if ((mousePressed) ) {
     
   circlecolorR = color(random(0,360),255,255);
     
 //los elipses tienen colores aleatorios   
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(380+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(420+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,20+j*80 , 20, 20);
    ellipse(420+i*80,20+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(460+i*80,20+j*80 , diametro, diametro);
     
  }
  }   
  }else {
    
    
    circlecolorN = color(random(0,360),360,360);
    circlecolorB = color(random(0,360),360,360);
   
   
        for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(380+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(420+i*80,60+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,20+j*80 , 20, 20);
    ellipse(420+i*80,20+j*80 , diametro, diametro);
     
  }
  }
    for(int j=0; j<10; j++)
    for(int i=0; i<10; i++)
  {
  {
    fill(circlecolorR); 
    ellipse(380,60+j*80 , 20, 20);
    ellipse(460+i*80,20+j*80 , diametro, diametro);
     
  }
  }  
    
  
  
  }  
 
 if(mouseX <= 400){  
  Dibujo(0,0);  //retoma el valor original cuando el mouseX esta situado menor que 400
  activo = true;
  }
  image(opart, 0, 0);
}

void mousePressed(){
  
  distancia = dist(mouseX, mouseY, squareX + squareSize/2, squareY + squareSize/2);

  // Verificar si el clic ocurrió dentro del cuadrado usando la distancia
  if (mouseX >= squareX && mouseX <= squareX + squareSize && mouseY >= squareY && mouseY <= squareY + squareSize) {
    activo = !activo;
    
  }
  
}
