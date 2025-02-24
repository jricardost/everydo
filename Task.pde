import java.util.TreeMap;

class Task extends Panel {
  
  private int id;
  private int state;
  private int priority;
  
  private String timestamp;
  private String category;
  
  CheckBox check1;
  Button button1;
  Label label1;
  Label label2;
  Label label3;
  
  public Task(){
    
    this.padding = new Padding(10);
    
    //background(WHITE);
    border(RED);
    
    check1 = new CheckBox();
    controls.add(check1);
    
    //button1 = new Button();
    //controls.add(button1);
    //button1.setText("LOW");
    
    //label1 = new Label();
    //controls.add(label1);
    //label1.setText("Task 1");
    
    //label2 = new Label();
    //controls.add(label2);
    //label2.setText("25/01/2025");
    
    //label3 = new Label();
    //controls.add(label3);
    //label3.setText("Nenhum comentário");
  }
  
  @Override
  public void draw(){
    //background(#22A1C6);
     super.draw();
  }
}
