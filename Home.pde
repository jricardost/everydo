public class Home extends View {

  Label title;
  TaskList list;

  public Home() {
    
    this.padding = new Padding(8);
    
     title = new Label();
     title.setLocation(0, 0);
     title.setSize(this.w, 45);
     title.setTextAlign(LEFT);
     title.setText("ToPaperDo");
     
     controls.add(title);
     
     
    list = new TaskList();
    list.setLocation(0, 55);
    list.setSize(w - padding.horizontal(), h - padding.vertical() - list.y);
    controls.add(list);
    
    list.add(new Task());
  }
}
