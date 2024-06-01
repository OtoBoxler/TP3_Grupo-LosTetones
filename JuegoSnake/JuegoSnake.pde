Snake serpiente;
ArrayList<Animal> animales;
int puntaje;
float tiempo;
ArrayList<String> historialComidas;

void setup() {
  size(500, 500);
  serpiente = new Snake();
  animales = new ArrayList<Animal>();
  agregarAnimal();
  puntaje = 0;
  tiempo = 0;
  historialComidas = new ArrayList<String>();
}

void draw() {
  background(#FFEE8E);
  float deltaTime = 1.0 / frameRate;
  tiempo += deltaTime;
  
  actualizar(deltaTime);
  dibujar();
  
  if (tiempo > 50) {
    textSize(25);
    fill(#FFA646);
    text("Juego Terminado", width/2 - 100, height/2);
    noLoop();
  }
}

void actualizar(float deltaTime) {
  serpiente.mover();
  if (serpiente.come(animales)) {
    puntaje += animales.get(0).puntaje;
    historialComidas.add("Comido: " + animales.get(0).tipo + " Tiempo: " + nf(tiempo, 1, 2));
    animales.remove(0);
    agregarAnimal();
    serpiente.crecer();
  }
}

void dibujar() {
  serpiente.dibujar();
  for (Animal animal : animales) {
    animal.dibujar();
  }
  
  textSize(10);
  fill(#FFA646);
  text("Puntaje: " + puntaje, 10, 20);
  
  for (int i = 0; i < historialComidas.size(); i++) {
    text(historialComidas.get(i), 10, 40 + 20 * i);
  }
}

void agregarAnimal() {
  int tipoAnimal = int(random(3));
  Animal nuevoAnimal;
  switch(tipoAnimal) {
    case 0:
      nuevoAnimal = new Raton();
      break;
    case 1:
      nuevoAnimal = new Pajarito();
      break;
    case 2:
      nuevoAnimal = new Insecto();
      break;
    default:
      nuevoAnimal = new Raton();
      break;
  }
  animales.add(nuevoAnimal);
}
