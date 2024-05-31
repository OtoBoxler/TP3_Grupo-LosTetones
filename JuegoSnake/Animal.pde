class Animal{
  String tipo;
  PVector posicion;
  int puntaje;
  PImage imagen;
  
  Animal(String tipo, PImage imagen, int puntaje){
    this.tipo=tipo;
    this.posicion = new PVector(random(width), random(height));
    this.puntaje = puntaje;
    this.imagen = imagen;
  }
  
  PVector generarPosicionAletoria(){
    float x= random(0,width-imagen.width);
    float y= random(0,height-imagen.height);
    return new PVector(x, y);
  }
  
  void dibujar(){
    image(imagen, posicion.x, posicion.y);
  }
}
