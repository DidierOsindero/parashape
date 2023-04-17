class shape {

  //This class has all the code for the 'shape' object

  int lines = 10; //Determines the number of lines that the shape will have.
  float t;

  shape(float _t) {//This passes the value of '_t' from the main tab, to 't' in this class. 

    t = _t;
  }


  void display(float red, float green, float blue) {

    //This For Loop draws the shape, using the equations at the bottom for the coordinates of the lines creating the shape.
    for (int i = 0; i < lines; i++) { 

      stroke(red, green, blue);
      strokeWeight(5);

      if (keyCode == RIGHT) {

        line(x1a(t + i)+(width/2), y1a(t + i)+(height/2), x2a(t + i)+(width/2), y2a(t + i) +(height/2));//Code for Blue Mode
      } else {

        line(x1(t +i)+(width/2), y1(t + i)+(height/2), x2(t + i)+(width/2), y2(t +i) +(height/2));
      }
    }

    pushMatrix();
    translate(width/2, height/2);//This moves the centre of the shapes' movement to the middle of the project window. 
    popMatrix();//Push/Pop Matrix is used so that the translation always occurs from the original 0,0 coordinate to the centre of the screen, regardless of how many shapes are created.
  }

  void move() {

    //The rate at which 't' increases is determined by the amplitude. 
    //If the amplitude is higher, 't' increases in value more quickly and the shapes move around their route at a higher speed.

    if (amp.analyze() < 0.01) {
      t += 0.1;
    } else if (amp.analyze() < 0.03) {
      t += 0.2;
    } else if (amp.analyze() < 0.05) {
      t += 0.3;
    } else if (amp.analyze() < 0.07) {
      t += 0.4;
    } else if (amp.analyze() < 0.09) {
      t += 0.5;
    } else if (amp.analyze() < 0.11) {
      t += 0.6;
    } else if (amp.analyze() < 0.13) {
      t += 0.7;
    } else if (amp.analyze() < 0.15) {
      t += 0.8;
    } else if (amp.analyze() < 0.17) {
      t += 0.9;
    } else if (amp.analyze() < 0.19) {
      t += 1.0;
    } else if (amp.analyze() < 0.21) {
      t += 1.1;
    } else if (amp.analyze() < 0.23) {
      t += 1.2;
    } else if (amp.analyze() < 0.25) {
      t += 1.3;
    } else {
      t += 1.4;
    }

    if (key == '=') {
      //This allows the user to change the number of lines in the shapes from 10 to 40 and back again. 
      //When either key is pressed, the shapes will automatically go back to Red Mode.

      if (lines < 40) {
        lines ++;
      } else {
        lines = 40;
      }
    } else if (key == '-') {

      if (lines > 10) {
        lines --;
      } else {
        lines = 10;
      }
    }
  }




 //These are the equations which help to plot the coordinates of the shape. As they all use the variable 't', this creates the beautiful symmetry that we see displayed.
  float x1(float t) {
    return sin(t/10) * 200 + sin(t/14) * 200;
  }

  float y1(float t) {
    return cos(t/8) * 140 + sin(t/33) * 100;
  }

  float x2(float t) {
    return sin(t/10) * 200;
  }

  float y2(float t) {
    return cos(t/10) * 100 + cos(t / 10) * 200;
  }


  //alternative movements
  float x1a(float t) {
    return sin(t/100) * 20 + sin(t/15) * 200;
  }

  float y1a(float t) {
    return cos(t/8) * 140 + sin(t/15) * 100;
  }

  float x2a(float t) {
    return sin(t/10) * 200;
  }

  float y2a(float t) {
    return cos(t/10) * 100 + cos(t / 10) * 200;
  }
}

//The idea for parametric equations is based off an example on YouTube in which the coder (Alexander Miller) used parametric equations to draw objects. 
//Here is the link to the video: 
//https://www.youtube.com/watch?v=LaarVR1AOvs
