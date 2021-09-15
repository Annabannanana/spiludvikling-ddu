
Bow bow;

void setup(){
  frameRate(30);
  size(1500, 800);
  imageMode(CENTER);
  bow = new Bow();
}

void draw(){
  clear();
  background(0, 175, 200);  
  bow.display();
}

void mousePressed(){
  bow.shoot();
}
