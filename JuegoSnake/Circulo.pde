class Circulo{
  PVector posicion;
  float tamano;
  
  Circulo(PVector posicion, float tamano){
    this.posicion=posicion;
    this.tamano=tamano;
  }
  
  void draw(){
    fill(#8CE57B);
    circle(posicion.x, posicion.y, tamano);
  }
}
