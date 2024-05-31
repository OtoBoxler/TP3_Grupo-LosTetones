class Snake{
  Cuadrado cabeza;
  ArrayList<Cuadrado> cuerpo;
  String direccion;
  float velocidad;
  
  Snake(){
    cabeza= new Cuadrado(new PVector(width/2, height/2), 20);
    cuerpo= new ArrayList<Cuadrado>();
    direccion= "RIGHT";
    velocidad=4.0;
  }
  
   void mover() {
    if (keyPressed) {
      if (key == 'w') direccion = "UP";
      if (key == 's') direccion = "DOWN";
      if (key == 'a') direccion = "LEFT";
      if (key == 'd') direccion = "RIGHT";
    }

    PVector nuevaPosicion = cabeza.posicion.copy();
    if (direccion.equals("UP")) nuevaPosicion.y -= velocidad;
    if (direccion.equals("DOWN")) nuevaPosicion.y += velocidad;
    if (direccion.equals("LEFT")) nuevaPosicion.x -= velocidad;
    if (direccion.equals("RIGHT")) nuevaPosicion.x += velocidad;
    
    nuevaPosicion.x = constrain(nuevaPosicion.x, 0, width - cabeza.tamano);
    nuevaPosicion.y = constrain(nuevaPosicion.y, 0, height - cabeza.tamano);

    cabeza.posicion = nuevaPosicion;
    if (!cuerpo.isEmpty()) {
      cuerpo.remove(cuerpo.size() - 1);
      cuerpo.add(0, new Cuadrado(nuevaPosicion.copy(), 20));
    }
  }
  
  void crecer() {
    PVector nuevaPosicion = cuerpo.isEmpty() ? cabeza.posicion.copy() : cuerpo.get(cuerpo.size() - 1).posicion.copy();
    cuerpo.add(new Cuadrado(nuevaPosicion, 20));
  }

  void dibujar() {
    cabeza.draw();
    for (Cuadrado parte : cuerpo) {
      parte.draw();
    }
  }
 
}
