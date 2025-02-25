import java.util.TreeMap;
import visualp3.Event;

class Task extends Panel implements Constants {

  private int id;
  private int state;
  private int priority = 0;

  private int[] priorityColors = {#007BFF, #FFC107, #28A745, #DC3545};
  private String[] priorityLabels = {"Baixa", "Normal", "Média", "Alta"};

  private String timestamp;
  private String category;

  CheckBox check1;
  Button button1;
  Button button2;
  Label label1;
  Label label2;
  Label label3;


  public Task() {
    this(0, 0);
  }

  public Task(int x, int y) {
    this(x, y, 150, 45);
  }

  public Task(int x, int y, int w, int h) {

    this.padding = new Padding(6);

    check1 = new CheckBox();
    controls.add(check1);

    label1 = new Label();
    label1.setText("Task 1");
    label1.setTextAlign(LEFT, CENTER);
    label1.textColor = #000000;
    controls.add(label1);

    button1 = new Button();
    button1.setText(priorityLabels[priority]);
    button1.backColor = priorityColors[priority];
    button1.hoverBackColor = priorityColors[priority];
    button1.textColor = WHITE;
    button1.hoverTextColor = WHITE;
    button1.onClick = new Event(this, "onPriorityClick");
    controls.add(button1);

    button2 = new Button();
    button2.setText("Tarefas");
    button2.backColor = priorityColors[1];
    button2.hoverBackColor = priorityColors[1];
    button2.textColor = WHITE;
    button2.hoverTextColor = WHITE;
    button2.onClick = new Event(this, "onPriorityClick");
    controls.add(button2);

    label2 = new Label();
    label2.setText("25/02/2025");
    label2.setTextAlign(LEFT, CENTER);
    label2.textColor = #000000;
    controls.add(label1);

    label3 = new Label();
    label3.setText("No comments");
    label3.setTextAlign(LEFT, CENTER);
    label3.textColor = #000000;
    controls.add(label3);
    
    setLocation(x, y);
    setSize(w, h);
  }

  @Override
    public void setSize(int w, int h) {

    super.setSize(w, h);

    if (check1 != null) {
      check1.setSize(h - padding.vertical(), h - padding.vertical());
    }

    if (label1 != null) {
      label1.setLocation(check1.x + check1.w + 10, check1.y);
      label1.setSize(125, check1.h);
      label1.setTextSize(int(check1.h * 0.7f));
    }

    if (button1 != null) {
      button1.setLocation(label1.x + label1.w + 10, check1.y);
      button1.setSize(100, check1.h);
      button1.setTextSize(int(check1.h * 0.7f));
    }

    if (button2 != null) {
      button2.setLocation(button1.x + button1.w + 10, button1.y);
      button2.setSize(100, check1.h);
      button2.setTextSize(int(check1.h * 0.7f));
    }
    
    if (label3 != null) {
      label3.setLocation(button2.x + button2.w + 10, button2.y);
      label3.setSize(125, check1.h);
      label3.setTextSize(int(check1.h * 0.7f));
    }
  }

  @Override
    public void draw() {

    push();

    background(#F2F2F2);

    super.drawChildControls();

    pop();
  }

  public void onPriorityClick(Object sender, MouseEvent e) {    

    priority += 1;
    if (priority > PRIORITY_LOW) priority = PRIORITY_HIGH;

    button1.backColor = priorityColors[priority];
    button1.hoverBackColor = priorityColors[priority];
    button1.setText(priorityLabels[priority]);
  }
}
