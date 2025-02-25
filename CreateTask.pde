public class CreateTask extends View {

  public Task task;

  public Label title1;

  public Label label1;
  public TextBox textBox1;

  public Label label2;
  public TextBox textBox2;


  public CreateTask() {

    backgroundColor = #F0F0F0;
    padding = new Padding(0);

    title1 = new Label();
    title1.padding = new Padding(15, 0);
    title1.setLocation(0, 0);
    title1.setSize(this.w, 45);
    title1.backColor = #CEDCE9;
    title1.setTextAlign(LEFT);
    title1.setText("Adicionar tarefa");
    controls.add(title1);

    label1 = new Label();
    label1.setText("Nome:");
    label1.setTextAlign(LEFT, CENTER);
    label1.setSize(220, 23);
    label1.setTextSize(int(label1.h * 0.6f));
    label1.setLocation(15, title1.y + title1.h + 5);
    controls.add(label1);

    textBox1 = new TextBox();
    textBox1.setSize(220, 20);
    textBox1.backColor = WHITE;
    textBox1.textColor = BLACK;
    textBox1.setRelativeLocation(label1, 0, 5);
    controls.add(textBox1);
    
    label2 = new Label();
    label2.setText("Categoria:");
    label2.setTextAlign(LEFT, CENTER);
    label2.setSize(220, 23);
    label2.setTextSize(int(label2.h * 0.6f));
    label2.setLocation(15, textBox1.y + textBox1.h + 5);
    controls.add(label2);

    textBox2 = new TextBox();
    textBox2.setSize(220, 20);
    textBox2.backColor = WHITE;
    textBox2.textColor = BLACK;
    textBox2.setRelativeLocation(label2, 0, 5);
    controls.add(textBox2);
  }
}
