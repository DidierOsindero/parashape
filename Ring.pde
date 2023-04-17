class ring {
  //This class has the code for the rings which are used in White Mode.

  float x_pos, y_pos;

  ring(float _x_pos, float _y_pos) {
    x_pos = _x_pos;
    y_pos = _y_pos;
  }

  void display() {

    stroke(255);
    strokeWeight(3);
    noFill();
    ellipse(x_pos, y_pos, amp.analyze() * 800, amp.analyze() * 800);//The rings grow in size depending on the amplitude.
  }
}
