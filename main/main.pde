
Bow bow;
Target target;

void setup(){
  frameRate(30);
  size(1500, 800);
  imageMode(CENTER);
  bow = new Bow();
  target = new Target();
}

void draw(){
  clear();
  background(0, 175, 200);  
  bow.display();
  target.display();
  
}

void mousePressed(){
  bow.shoot();
}
