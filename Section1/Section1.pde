void setup() {
  size(900, 900);
  v = new Visualizer(20, 20, 50, 800, 800);
}
void draw() {
  background(255);
  v.display();
  v.update();
}
