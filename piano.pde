/***** PIANO ******/
// wav files: https://github.com/pffy/wav-piano-sound

import ddf.minim.*;
Minim minim;
AudioPlayer player;



int x_margin = 50;
int y_margin = 80;
int startX = x_margin;
int startY = y_margin;

float wkey_width;
float wkey_height;

float bkey_width;
float bkey_height;

float bkeys_space;

float bstartX;
float bstartY;


void setup() {
  size(640, 480);
  background(100, 100, 100);
  minim = new Minim(this);
  
  wkey_width = (width-2*x_margin)/8;
  wkey_height = height-2*y_margin;
  
  bkey_width = wkey_width/2;
  bkey_height = wkey_height*3/5;

  bkeys_space = bkey_width;

  bstartX = startX - bkey_width/2;
  bstartY = startY;
}


void draw() {
  //white key  
  for (int i=0; i<8; i++) {    
      fill(255, 255, 255);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+i*wkey_width, startY, wkey_width, wkey_height);
  }

  //black key
  for (int i=0; i<8; i++) {
    fill(0);
    stroke(0);
    strokeWeight(0);
    if (i==0 || i==3 || i==7) {
    } else {
      rect(bstartX+i*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    }
  }
  


}


void mousePressed(){
  println("mouse!!!");  
  if(mouseX>startX+0*wkey_width && mouseX<=startX+1*wkey_width && mouseY>startY && mouseY <=startY+1*wkey_height){
      /*----- C -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+0*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+1*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/c1.wav");
      player.play();

  } else if(mouseX>startX+1*wkey_width && mouseX<=startX+2*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- D -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+1*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+1*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      rect(bstartX+2*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/d1.wav");
      player.play();
  }  else if(mouseX>startX+2*wkey_width && mouseX<=startX+3*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- E -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+2*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+2*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/e1.wav");
      player.play();


  }   else if(mouseX>startX+3*wkey_width && mouseX<=startX+4*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- F -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+3*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+4*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/f1.wav");
      player.play();
  
  }   else if(mouseX>startX+4*wkey_width && mouseX<=startX+5*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- G -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+4*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+4*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      rect(bstartX+5*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/g1.wav");
      player.play();
      
  }   else if(mouseX>startX+5*wkey_width && mouseX<=startX+6*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- A -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+5*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+5*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      rect(bstartX+6*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/a1.wav");
      player.play();
      
  }   else if(mouseX>startX+6*wkey_width && mouseX<=startX+7*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- B -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+6*wkey_width, startY, wkey_width, wkey_height);
      
      //draw black key
      fill(0);
      stroke(0);
      strokeWeight(0);
      rect(bstartX+6*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
      
      //play sound
      player = minim.loadFile("wav/b1.wav");
      player.play();  
      
  } else if(mouseX>startX+7*wkey_width && mouseX<=startX+8*wkey_width && mouseY>startY && mouseY <=startY+wkey_height){
      /*----- C8 -----*/  
      //draw white key
      fill(180);
      stroke(0);
      strokeWeight(3.0);
      rect(startX+7*wkey_width, startY, wkey_width, wkey_height);   
      //draw black key
      
      //play sound
      player = minim.loadFile("wav/c2.wav");
      player.play();
  }
}




void keyPressed() {
  if (key == 'A' || key == 'a') {
    println("C");
    /*----- C -----*/  
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+0*wkey_width, startY, wkey_width, wkey_height);
      
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+1*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound 
    player = minim.loadFile("wav/c1.wav");
    player.play();
      
  } else if (key == 'S' || key == 's') {
    println("D");
    /*----- D -----*/  
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+1*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+1*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    rect(bstartX+2*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);

    //play sound
    player = minim.loadFile("wav/d1.wav");
    player.play();
    
  } else if (key == 'D' || key == 'd') {
    println("E");
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+2*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+2*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound
    player = minim.loadFile("wav/e1.wav");
    player.play();
    
  } else if (key == 'F' || key == 'f') {
    println("F");
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+3*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+4*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound
    player = minim.loadFile("wav/f1.wav");
    player.play();   
 
  } else if (key == 'G' || key == 'g') {
    println("G");
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+4*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+4*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    rect(bstartX+5*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound
    player = minim.loadFile("wav/g1.wav");
    player.play();
    
  } else if (key == 'H' || key == 'h') {
    println("A");
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+5*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+5*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    rect(bstartX+6*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound
    player = minim.loadFile("wav/a1.wav");
    player.play();
    
  } else if (key == 'J' || key == 'j') {
    println("B");
    /*----- B -----*/  
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+6*wkey_width, startY, wkey_width, wkey_height);
    
    //draw black key
    fill(0);
    stroke(0);
    strokeWeight(0);
    rect(bstartX+6*(bkeys_space+bkey_width), bstartY, bkey_width, bkey_height);
    
    //play sound
    player = minim.loadFile("wav/b1.wav");
    player.play();
    
  } else if (key == 'K' || key == 'k') {
    println("C8");
    /*----- C8 -----*/  
    //draw white key
    fill(180);
    stroke(0);
    strokeWeight(3.0);
    rect(startX+7*wkey_width, startY, wkey_width, wkey_height);
    
    //play sound
    player = minim.loadFile("wav/c2.wav");
    player.play();
  }
}
