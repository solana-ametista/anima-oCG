PShape pata1,pata2,pata3,pata4,casco,pescoco,cabeca,olhoE,olhoD,cauda,cobra;
PImage bg;
int arms;
int arms2;

int ac;

int velocidadeTurtlePatas=0;
float velocidadeTurtle=0;
int velocidadeCobraOnda = 0;
float velocidadeCobra=0;
void setup() {
  size(1364,749, P3D);
  
  bg = loadImage("BugRix.jpg");
  bg.resize(1364, 749);

 frameRate(60);
  pata1 = loadShape("pataOrigem2.obj");
  pata2 = pata1;
  pata3 = pata1;
  pata4 = pata1;
 
  casco = loadShape("casco.obj");
  pescoco = loadShape("pescoco.obj");
  cabeca = loadShape("cabeça.obj");
  olhoE = loadShape("olhoE.obj");
  olhoD = loadShape("olhoD.obj");
  cauda = loadShape("calda.obj");
  //cobra = loadShape("cobra.obj");
  arms=-1;
  arms2=1;
  ac=1;
}

void draw() {
 
  background(bg);
  lights();
   
  translate(width/2,height/2,0);
  scale(50,-50, 50);
  rotateY(radians(60));
 drawTurtle(velocidadeTurtle);

  velocidadeTurtle+=0.01;
 
 
 
}
void drawTurtle(float velocidadeTurtle){
 
       pushMatrix(); //Casco
            translate(0,0,velocidadeTurtle);
            shape(pescoco);
            shape(casco);
            shape(cauda);
            shape(olhoE);
            shape(olhoD);
            shape(cabeca);
            pushMatrix(); //pata1
                   translate(-0.6,0.12,-0.6);
                   rotateX(arms*PI/10);
                 
                   shape (pata1);
                   
            popMatrix();
            pushMatrix(); //pata2
                   translate(0.3,0.12,-0.6);
                   rotateX(arms2*PI/10);
                   
                   shape (pata2);
                   
            popMatrix();
            pushMatrix(); //pata3
                   translate(-0.6,0.12,-2.5);
                   rotateX(arms*PI/10);
                 
                   shape (pata3);
                   
            popMatrix();
            pushMatrix(); //pata4
                  translate(0.3,0.12,-2.5);
                   rotateX(arms2*PI/10);
                 
                 
                  shape (pata4);
                   
            popMatrix();
     
     popMatrix();
     velocidadeTurtlePatas ++;
     if(velocidadeTurtlePatas==10){
         arms*=-1;
         arms2*=-1;
         velocidadeTurtlePatas=0;
     }
}
