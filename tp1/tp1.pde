PImage img;

void setup()
{
  //size debe ser de 800,400
  size(800,400);
  img = loadImage("desierto.jpg");
  

  
}

void draw()
{
 
 fill(255,100,0);
  strokeWeight(0);
  rect(400, 0, 400,400);
  
    noStroke();
  fill(255,250,0);
 

   
  ellipse(680, 300, 180, 180);
  
  fill(255,250,0,50);
   ellipse(780, 300, 220, 280);
   ellipse(580, 300, 220, 220);
   ellipse(580, 000, 220, 220);
   ellipse(760, 100, 220, 220);
   ellipse(60, 100, 220, 220);
    ellipse(400, 110, 220, 230);
   fill(255,0,50,50);
   
   stroke(30,10,0);
      strokeWeight(6);
  line(670,370, 680,320);
  line(690,310, 680,320);
   line(670,310, 680,320);
   
   line(470,370, 480,320);
  line(490,310, 480,320);
   line(470,310, 480,320);
   
   noStroke();
   ellipse(40, 430, 3020, 220);
   ellipse(40, 400, 3020, 220);
   ellipse(40, 370, 3020, 220);
   ellipse(40, 340, 3020, 220);
   ellipse(40, 310, 3020, 220);
   fill(25,0,50,50);
   ellipse(40, 0, 3020, 220);
   
  fill(30,10,0);
  

  
  stroke(30,10,0);
  strokeWeight(40);
  line(800, 361, 400,361);
  line(800, 380, 400,380);
  line(590, 340, 400,380);
 
  stroke(30,10, 0);
  strokeWeight(30);
  line(580, 140, 600,390);
  strokeWeight(20);
  line(660, 100, 560,180);
  line(520, 94, 580,180);
  
  strokeWeight(15);
  line(520, 94, 480,120);
   line(550, 24, 510,100);
  line(400, 50, 480,120);
  line(600, 10, 640,110);
  line(750,20, 670,170);
  line(635,130, 670,170);
  line(780,20, 770,140);
  line(700,120, 770,140);
  


  ellipse(400, 40, 100, 100);
  ellipse(500, 0, 110, 100);
  ellipse(600, 10, 110, 100);
  ellipse(700, 10, 120, 100);
  ellipse(800, 10, 120, 160);

  // imágen
   image(img, 0, 0);
  

}
