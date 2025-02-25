
import visualp3.*;
import visualp3.ui.*;

VisualP3 vp3;

void setup() {

  size(800, 600, FX2D);
  smooth(1);

  vp3 = new VisualP3(this);
  vp3.show(new Home());

  //Modal modal = new Modal();
  //PApplet.runSketch(new String[] { "Modal" }, modal);
}

void draw() {
}

//public static class Modal extends PApplet {

//  VisualP3 vp3;

//  public Modal() {
//  }

//  public void setup() {
//    vp3 = new VisualP3(this);
    
//  }

//  public void settings() {
//    size(360, 480);
//  }

//  public void draw() {
//  }
//}
