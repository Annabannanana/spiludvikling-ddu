class Target extends Component{
  float targetX, targetY;
  //int Pwidth= 100;
  PImage Target;
  
  Target(float targetX_, float targetY_){
    targetX = targetX_;
    targetY = targetY_;
    Target = loadImage("Target.png");
    Target.resize(50, 100);
  }
  
  void update(){
    targetX = random(1000, 1450);
    targetY = random(50, 750);
    println("hit");
    println("targetX = " + targetX);
    println("targetY = " + targetY);
  }
  
  void display(){
    image(Target, targetX, targetY);
  }
  

}
