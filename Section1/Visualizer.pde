int MAX_VALUE = 100;
int MIN_VALUE = -100;
Visualizer v;

/*You are simulating a visualizer of multiple values
 You need to create a display method first. 
 Then you can make a method that changes the values each time the update is called. 
 */
class Visualizer {
  float x, y, w, l;
  float [] values;
  float [] speeds;
  Visualizer(float x, float y, int size, float wide, float le) {
    this.x = x;
    this.y = y;
    w = wide;
    l = le;
    values = new float[size];
    speeds = new float[size];
    for (int i = 0; i < values.length; i++) {
      values[i] = random(-99, 99);
      speeds[i] = random(2);
    }
  }

  void display() {
    //draw the bars equally spaced inside this box. 
    //You can assume 10, but it would be even better 
    //if you could modify it to be larger increments.
    fill(255);
    rect(x, y, w, l);
    //This is a 200x400 box.
    //The width of the visualizer is 400! This rect is the border

    //the line is the 0 y-value, the top is 100, the bottom is -100
    line(x, y+l/2, x+w, y+l/2);

    //You need to use a loop. You need to make the HEIGHT of the bars 
    //the values in the array.
    //Negative values are red, and go below the line.
    //Positive values are green and go above the line.

    //???WRITE THIS METHOD FIRST!!!
    //THESE ARE WRONG: They just illustrate how they could look
    for (int i = 0; i < values.length; i++) {
      if (values[i] <= 0) {
        fill(255, 255*(1 + values[i]/100), 0);
      } else {
        fill(255*(1 - values[i]/100), 255, 0);
      }
      rect(x + (w / values.length) * i, y + l/2, w / values.length, -values[i] * l / 200);
    }


    //Width of the visualizer is 400!

  
  }
  void update() {
    //???WRITE THIS METHOD SECOND!!!
    for (int i = 0; i < values.length; i++) {
      values[i] += speeds[i]; //the speed updates the values. Do not touch this.
      //??? keep them values between max/min value so they stay in the box.
      if (values[i] > 100 || values[i] < -100) {
      //??? reverse the speeds so the bar oscillates up/down when it reaches max/min
        speeds[i] = -speeds[i];
      }
    }
  }
}
