class Target extends Component{
  float targetX, targetY;
  //int Pwidth= 100;
  PImage Target;
  
  Target(){
    Target = loadImage("Target.png");
    Target.resize(50, 100);
  }
  
  void update(){
    targetX = random(1000, 1450);
    targetY = random(50, 750);
    println("hit");
  }
  
  void display(){
    image(Target, targetX, targetY);
  }
}
