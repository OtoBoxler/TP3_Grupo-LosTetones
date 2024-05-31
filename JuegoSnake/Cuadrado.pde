class Cuadrado{
  PVector posicion;
  int tamano;
  
  Cuadrado(PVector posicion, int tamano){
    this.posicion=posicion;
    this.tamano=tamano;
  }
  
  void draw(){
    fill(#8CE57B);
    rect(posicion.x, posicion.y, tamano, tamano);
  }
}
