
Bow bow;
Target target;

void setup(){
  frameRate(30);
  size(1500, 800);
  imageMode(CENTER);
  bow = new Bow();
  target = new Target();
  target.update();
}

void draw(){
  clear();
  background(0, 175, 200);  
  bow.display();
  target.display();
  bow.collision();
  
}

void mousePressed(){
  bow.shoot();
  //target.update();
}
