class Component{

  PFont f = createFont("Arial",16,true);
  float x, y, mass, w, h, p;
  PVector loca, velo, accel, grav;
  String points = "Points: ";

  Component(){
    loca = new PVector();
    velo = new PVector();
    accel = new PVector();
    grav = new PVector(0, 9.82);
  }

  void display(){
  }

}
