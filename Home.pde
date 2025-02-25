public class Home extends View {

  Label title;
  TaskList list;

  public Home() {

    backgroundColor = #F0F0F0;
    padding = new Padding(0);

    title = new Label();
    title.padding = new Padding(15, 0);
    title.setLocation(0, 0);
    title.setSize(this.w, 45);
    title.backColor = #CEDCE9;
    title.setTextAlign(LEFT);
    title.setText("EveryDo");
    controls.add(title);

    controls.add(title);


    list = new TaskList();
    list.setLocation(0, title.y + title.h + 20);
    list.setSize(w - padding.horizontal(), h - padding.vertical() - list.y);
    controls.add(list);

    list.add(new Task("Trabalho POO2", 0, "Faculdade", "25/02/2025", "Apresentar em sala!"));
    list.add(new Task("Final GAAL", 2, "Faculdade", "26/02/2025", "Estuda!!!"));
    list.add(new Task("Prog Web", 3, "Faculdade", "28/02/2025", "Trabalho para sexta-feira!"));
  }
}
