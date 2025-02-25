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

  public int backColor = #F0F0F0;
  public int hoverBackColor = #AAAAAA;
  public float borderRadius = 3.0f;


  CheckBox check1;
  Button button1;
  Button button2;
  Button button3;
  Label label1;
  Label label2;
  Label label3;


  public Task() {
    this(0, 0);
  }

  public Task(String name, int priority, String category, String deadline, String comment) {
    this(0, 0);
    setName(name);
    setPriority(priority);
    setCategory(category);
    setComment(comment);
    setDeadline(deadline);
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

    button3 = new Button();
    button3.setText("deadline");
    button3.backColor = WHITE;
    button3.hoverBackColor = WHITE;
    button3.textColor = BLUE;
    button3.hoverTextColor = BLUE;
    controls.add(button3);

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
      check1.setSize((h - padding.vertical()) * .75f, (h - padding.vertical()) * .75f);
      check1.setLocation(check1.x, (h - padding.vertical() - check1.h) / 2);
      check1.borderRadius = 3;
    }

    if (label1 != null) {
      label1.setLocation(check1.x + check1.w + 10, 0);
      label1.setSize(125, h - padding.vertical());
      label1.setTextSize(int(label1.h * 0.7f));
    }

    if (button1 != null) {
      button1.setLocation(label1.x + label1.w + 10, label1.y);
      button1.setSize(100, label1.h);
      button1.setTextSize(label1.textSize);
      button1.borderRadius = 5.0f;
    }

    if (button2 != null) {
      button2.setLocation(button1.x + button1.w + 10, label1.y);
      button2.setSize(100, label1.h);
      button2.setTextSize(label1.textSize);
      button2.borderRadius = 5.0f;
    }

    if (button3 != null) {
      button3.setLocation(button2.x + button2.w + 10, label1.y);
      button3.setSize(100, label1.h);
      button3.setTextSize(label1.textSize);
      button3.borderRadius = 5.0f;
    }

    if (label3 != null) {
      label3.setLocation(button3.x + button3.w + 10, label1.y);
      label3.setSize(w - x - padding.horizontal(), label1.h);
      label3.setTextSize(label1.textSize);
    }
  }

  @Override
    public void draw() {

    push();

    background(borderRadius, backColor);

    super.drawChildControls();

    pop();
  }

  public void onPriorityClick(Object sender, MouseEvent e) {    

    priority += 1;
    if (priority > PRIORITY_LOW) priority = PRIORITY_HIGH;

    setPriority(priority);
  }

  public void setName(String name) {
    label1.setText(name);
  }

  public void setPriority(int priority) {
    this.priority = priority;

    button1.backColor = priorityColors[priority];
    button1.hoverBackColor = priorityColors[priority];
    button1.setText(priorityLabels[priority]);
  }

  public void setCategory(String category) {
    button2.setText(category);
  }

  public void setComment(String comment) {
    this.label3.setText(comment);
  }
  
  public void setDeadline(String deadline){
     this.button3.setText(deadline);
  }
}
