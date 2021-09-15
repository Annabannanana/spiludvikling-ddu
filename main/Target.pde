class Target extends Bow{
  float targetX=width-100;
  float targetY= random(50, 750);
  //int Pwidth= 100;
  PImage Target;
  
  Target(){
    Target = loadImage("Target.png");
    Target.resize(50, 100);
  }

  void display(){
    image(Target, targetX, targetY);
  }

void update(){
  for(Arrow a : allArrows){
    if(a.loca.x < targetX + 25 && a.loca.x > targetX - 25 && a.loca.y < targetY + 50 && a.loca.y > targetY - 50){
      //targetY= random(0,height);
      println("hit");
      
      }
    }
  }

}
