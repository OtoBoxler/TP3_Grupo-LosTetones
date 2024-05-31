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
}
