class TaskList extends Panel {

  private int taskHeight = 35;
  private int taskMargin = 4;

  Button addTask;

  public TaskList() {

    backColor = #F0F0F0;
    borderColor = TRANSPARENT;
    areaBorderColor = TRANSPARENT;

    this.setLocation(0, 0);
    this.setSize(100, 100);
    this.padding = new Padding(3);

    addTask = new Button();
  }

  @Override
    public void draw() {
    try {
      super.draw();
    } 
    catch (Exception e) {
      e.printStackTrace();
    }
  }

  public void add(Task task) {
    if (task == null) return;
    task.setLocation(taskMargin, taskMargin + controls.size() * (taskHeight + taskMargin));
    task.setSize(this.w - this.padding.horizontal() - (2 * taskMargin), taskHeight);
    controls.add(task);
  }
}
