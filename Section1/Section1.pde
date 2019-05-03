void setup() {
  size(600, 500);
  v = new Visualizer(20, 20, 10);
}
void draw() {
  background(255);
  v.display();
  v.update();
}