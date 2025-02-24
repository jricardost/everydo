import visualp3.Event;

public class TextBox extends Drawable {


  public boolean border = false;

  public TextBox() {

    this.setLocation(0, 0);
    this.setSize(100, 100);
    

  }

  public void draw() {
    background(#FF0000);

    if (border) {
      border(#ffe900);
    }
  }
}
