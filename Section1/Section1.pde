void setup() {
  size(200, 500);
  v = new Visualizer(20, 20, 5, 100, 250);
}
void draw() {
  background(255);
  v.display();
  v.update();
}
