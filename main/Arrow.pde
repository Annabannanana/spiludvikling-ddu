class Arrow extends Component{
  
  boolean fired = false;
  PImage arrow;
  
  Arrow(){
    mass = 10;
    arrow = loadImage("Arrow.png");
    arrow.resize(100, 50);
  }
  
  void applyGravity(PVector force){
    PVector gravity;
    gravity = force.copy();
    gravity.div(mass);
    accel.add(gravity);
  }
  
  void update(){
    if(fired == true){
      applyGravity(grav);
    }
    velo.add(accel);
    loca.add(velo);
    accel.mult(0);
  }
  
  void display(){
    fill(40);
    image(arrow, loca.x, loca.y);
  }
}
