class TaskList extends Panel {
  
   public TaskList() {
       this.setLocation(0, 0);
       this.setSize(100, 100);
       
       this.padding = new Padding(3);
   }
   
   @Override
   public void draw(){
      super.draw();
   }
   
   public void add(Task task){
       if (task == null) return;
       task.setLocation(10, 10 + controls.size() * (45 + 10));
       task.setSize(this.w - this.padding.horizontal() - 20, 35);
       controls.add(task);
   }
}
