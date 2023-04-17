# <b>Parashape</b>

## <b>Description✍🏾</b>

### <b>💭What is it?</b>

This is a creative coding sketch created with Processing. I wanted to create a sketch which reacted to live sound in an imaginative way. More specifically, I had the idea of being able to give a live solo violin performance with this sketch projected above as a visual element to the performance. 

After doing some research I found an example on YouTube in which the Alexander Miller used parametric equations to draw objects. I have copied a link to the YouTube video as a comment in the code. (Here is the link to the video: 

https://www.youtube.com/watch?v=LaarVR1AOvs

Miller seeks to imitate the computer-generated artwork of John Whitney who used parametric equations to create his art. I was fascinated by the symmetrical shapes which the equations created when used to draw shapes, and knew that I wanted to use it in my project. 

Having considered a few ways in which I could utilise parametric equations in my audio visualisation project, I decided to settle on using them to create objects (shapes) which reacted to amplitude. I thought of a number of different ways in which I could use the amplitude to influence the parametric shapes and settled on using it to change the velocity of the objects. The objects follow a set path determined by the specific equations that I decided on, and loop round this route at a speed dependant on the amplitude of the equation.

After having decided on this as the base of my project, I then decided to create more visual interest, including ‘volume rings’ which grew in size depending on amplitude. Finally, I coded small particle like ‘circles’ which would be created upon reaching a certain amplitude threshold. 

In order to organise my project to make it more readable, I decided to create classes on separate tabs for ‘Circle’ ‘Ring’ and ‘Shape’ objects. This allowed me to write the code for each object on a separate tab and simply create them in the main sketch tab. 

I decided to use key press functionality in order to make the patch more interesting and came up with the idea that certain keys could activate certain ‘modes’. There are three possible ways (i.e. modes) of using this audio visualisation sketch. When it is first opened, you will be using the first mode (we can call it Pink Mode). The other two modes are controlled by the LEFT and RIGHT arrow keys (White Mode and Blue Mode). If any other key is pressed, you will get the Pink Mode again. The name of each mode isn’t actually written in the code itself but I’m just using it for reference purposes now.
<br/>


## <b>Running The Project Locally💻</b>

🌟Please install Processing software sketchbook and run this file on that software. You can download and find out more information about Processing here: https://processing.org/
