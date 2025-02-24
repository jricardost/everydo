
import visualp3.*;
import visualp3.ui.*;

VisualP3 vp3;

void setup() {

  size(800, 600, FX2D);
  smooth(1);

  vp3 = new VisualP3(this);
  vp3.show(new Home());
}

void draw() {
}
