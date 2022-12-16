PShape turtleCasco, turtleCabeca, turtleCalda, turtlePTD, turtlePTE, turtlePDD, turtlePDE, turtleOD, turtleOE, turtlePescoco;
PShape porcoCabeca, porcoCorpo, porcoFucinho, porcoOlhos, porcoOrelhas, porcoPTD, porcoPTE, porcoPDD, porcoPDE, porcoRabo;
PShape cobraCabeca, cobraCorpo, cobraLingua, cobraOD, cobraOE, cobraRabo;
int move;

void setup() {

  size(800, 800, P3D);
  move = 1;

  //cobra
  cobraCabeca = loadShape("Cobra-cabeca.obj");
  cobraCorpo  = loadShape("Cobra-corpo.obj");
  cobraLingua = loadShape("Cobra-lingua.obj");
  cobraOD     = loadShape("Cobra-olhoD.obj");
  cobraOE     = loadShape("Cobra-olhoE.obj");
  cobraRabo   = loadShape("Cobra-rabo.obj");

  //porco
  porcoCabeca  = loadShape("Porco-cabeca.obj");
  porcoCorpo   = loadShape("Porco-corpo.obj");
  porcoFucinho = loadShape("Porco-fucinho.obj");
  porcoOlhos   = loadShape("Porco-olhos.obj");
  porcoOrelhas = loadShape("Porco-orelhas.obj");
  porcoPTD     = loadShape("Porco-pataTD.obj");
  porcoPTE     = loadShape("Porco-pataTE.obj");
  porcoPDD     = loadShape("Porco-pataDD.obj");
  porcoPDE     = loadShape("Porco-pataDE.obj");
  porcoRabo    = loadShape("Porco-rabo.obj");

  //tartaruga
  turtleCabeca  = loadShape("Tartaruga-cabe.obj");
  turtleCasco   = loadShape("Tartaruga-casco.obj");
  turtleCalda   = loadShape("Tartaruga-calda.obj");
  turtlePTD     = loadShape("Tartaruga-pataTD.obj");
  turtlePTE     = loadShape("Tartaruga-pataTE.obj");
  turtlePDD     = loadShape("Tartaruga-pataFD.obj");
  turtlePDE     = loadShape("Tartaruga-pataFE.obj");
  turtleOD      = loadShape("Tartaruga-olhoD.obj");
  turtleOE      = loadShape("Tartaruga-olhoE.obj");
  turtlePescoco = loadShape("Tartaruga-pescoco.obj");
}


void draw() {

  translate(width/2, height/2);
  rotateY(PI/2);
  //rotateY(PI);
  background(255);
  //plano
  /*
  pushMatrix();
   translate(0,0,-300);
   rotateX(PI/2.5);
   fill(155);
   rectMode(CENTER);
   rect(0,0,1600,3200);
   popMatrix();
   */
  //translate(0,-1600+height/2,0);
  //translate(0,frameCount,0);

  scale(50);

  //cobra
  pushMatrix();
  cobraCabeca.setFill(color(153, 153, 0));
  cobraCorpo.setFill(color(153, 153, 0));
  cobraLingua.setFill(color(255, 153, 204));
  cobraOD.setFill(color(0));
  cobraOE.setFill(color(0));
  cobraRabo.setFill(color(102, 102, 0));

  shape(cobraCabeca);
  shape(cobraCorpo);
  shape(cobraLingua);
  shape(cobraOD);
  shape(cobraOE);
  shape(cobraRabo);
  popMatrix();

  //porco
  pushMatrix();
  delay(300);
  movimento(1);
  move*=-1;
  popMatrix();

  //tartaruga
  pushMatrix();
  turtleCabeca.setFill(color(0, 255, 0));
  turtleCasco.setFill(color(68, 30, 30));
  turtleCalda.setFill(color(0, 255, 0));
  turtleOD.setFill(color(0));
  turtleOE.setFill(color(0));
  turtlePTD.setFill(color(0, 255, 0));
  turtlePTE.setFill(color(0, 255, 0));
  turtlePDD.setFill(color(0, 255, 0));
  turtlePDE.setFill(color(0, 255, 0));
  turtlePescoco.setFill(color(0, 255, 0));

  shape(turtleCabeca);
  shape(turtleCasco);
  shape(turtleCalda);
  shape(turtleOD);
  shape(turtleOE);
  shape(turtlePTD);
  shape(turtlePTE);
  shape(turtlePDD);
  shape(turtlePDE);
  shape(turtlePescoco);
  popMatrix();

}

void movimento(float vel) {

  translate(0, 0, frameCount * vel);
  shape(porcoCabeca);
  shape(porcoFucinho);
  shape(porcoOlhos);
  shape(porcoOrelhas);
  shape(porcoCorpo);
  porcoRabo.setFill(color(100, 18, 48));
  pushMatrix();
  translate(-12.5,0,-4.2);
  shape(porcoRabo);
  popMatrix();

  if (move == -1) {

    pushMatrix();
    translate(1, 1.2, -2.4);
    rotateX(radians(65));
    shape(porcoPDD);
    popMatrix();

    pushMatrix();
    translate(0, 1.2, -2.4);
    rotateX(radians(65));
    shape(porcoPDE);
    popMatrix();

    pushMatrix();
    translate(1, 0.1, -3.3);
    rotateX(-radians(30));
    shape(porcoPTD);
    popMatrix();

    pushMatrix();
    translate(0, 0.1, -3.3);
    rotateX(-radians(30));
    shape(porcoPTE);
    popMatrix();

    
  } else {
    pushMatrix();
    translate(1, -1, -3.3);
    shape(porcoPDD);
    popMatrix();

    pushMatrix();
    translate(0, -1, -3.3);
    shape(porcoPDE);
    popMatrix();

    pushMatrix();
    translate(1, -0.85, -3.3);
    shape(porcoPTD);
    popMatrix();

    pushMatrix();
    translate(0, -0.85, -3.3);
    shape(porcoPTE);
    popMatrix();
  }
}
