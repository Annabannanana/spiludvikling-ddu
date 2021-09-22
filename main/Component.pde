class Component{

  
  float x, y, mass, w, h;
  PVector loca, velo, accel, grav;
  
  Component(){
    loca = new PVector();
    velo = new PVector();
    accel = new PVector();
    grav = new PVector(0, 9.82);
  }
  
  void display(){
    
  }
    
}
