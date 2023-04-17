class circle { //Here I create a class 'circle', which all my code for the 'circle' objects will be written in.

  //Declaring required variables.
  float x_pos, y_pos;
  float vel_x = random(-5, 5); //Randomly set the X and Y velocities with a range beginning at -5 so that the circles go in all directions.
  float vel_y = random(-5, 5);

  boolean dead = false;
  int life = 500; //Each circle has a life of 500


  //Constructor: the circle takes arguments for X and Y positions.
  circle(float _x_pos, float _y_pos) { //Takes arguments for x and y positions
    x_pos = _x_pos;
    y_pos = _y_pos;
  }


  void display() {

    //Circles change colour depending on amplitude.
    stroke(amp.analyze() * random(0, 500), amp.analyze() * random(0, 500), amp.analyze() * random(0, 500));
    strokeWeight(1);
    fill(life/2, life/2, life/2);

    ellipse(x_pos, y_pos, life/100, life/100);//Get smaller as their life diminishes.
  }



  void move() {

    x_pos += vel_x;//Circles' positions change depending on their randomly selected velocity.

    //Test for circles, if they hit one of the sides of the window, they will bounce off it.
    if (x_pos + life/100 > width || x_pos - life/100 < 0) {
      vel_x = -vel_x;
    }


    y_pos += vel_y;
    if (y_pos + life/100 > width || y_pos - life/100 < 0) {
      vel_y = -vel_y;
    }


    //The life of circle diminishes by 1 each loop of the method,
    //If 'life' is less than 0, Boolean 'dead' becomes true and the circle is removed from the array list.
    life--;


    if (life < 0) {

      dead = true;
    } else {

      life--;
    }
  }
}
