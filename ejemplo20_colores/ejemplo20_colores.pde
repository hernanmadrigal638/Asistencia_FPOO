PVector coordenadasRect;
int ancho, alto, distEntreRect;

void setup() {
  size(440, 420);
  background(237, 213, 177);
  distEntreRect = 20;
  ancho = 40;
  alto = 20;
  coordenadasRect = new PVector(distEntreRect, distEntreRect);
}

void draw(){
  for (int i = 0; i < 9; i++) {
    dibujarRectangulos();
    coordenadasRect.y += alto + distEntreRect;
  }
}

void dibujarRectangulos(){
  fill(255, 0, 0);
  for(float x=coordenadasRect.x;x<width;x+= (ancho+distEntreRect)){
    rect(x,coordenadasRect.y,ancho,alto);
  }
}
