# Worldsight

<img src="https://i.imgur.com/8ObwLVY.png" width = "300" height = "300" alt="Worldsight">

WorldSight strives to make historical assets around the world accessible to anyone, anywhere. 

[Team Song](https://www.youtube.com/watch?v=VDvr08sCPOc)

[Code Repository](https://github.com/alanefl/seer)

# Team Members
Member | Email | Photo
--- | --- | ---
Jihee Hwang | jiheeh@stanford.edu<br/>http://jiheehwang.com | <img src="http://alarmringing.com/img/sanfran_small.jpg" alt="Jihee Hwang" width="157.5" height="157.5">
Andrew Huang | ahuang98@stanford.edu | <img src="https://andrewhuang121.github.io/images/AndrewHuang.jpg" alt="Andrew Huang" width = "157.5" height="157.5">
Aakanksha Saxena | asaxena1@stanford.edu | <img src="https://media-exp2.licdn.com/dms/image/C5603AQEbzZalMmrTVw/profile-displayphoto-shrink_200_200/0?e=1585180800&v=beta&t=8pxYkANVYkeWiBkxnW7Ug5fgMUT67GX4VG3tL11ZKps" alt="Aakanksha Saxena" width = "157.5" height="157.5">
Grace Cheng | gcheng21@stanford.edu | <img src="http://stanford.edu/~gcheng21/img/grace.JPG" alt="Grace Cheng" width = "157.5" height="157.5">
Farhan Azam | fazam@stanford.edu | <img src="https://i.imgur.com/3Kho7vN.jpg" alt="Farhan Azam" width = "157.5" height="157.5">

# Team Skills Matrix:

Member | Hat | Technical Skills | Non-Technical Skills | Personal Traits | Desired Growth | Weaknesses
--- | --- | --- | --- | --- | --- | ---
Jihee | Green | Unity, VR, graphics, AI/deep learning | visual design, presentation skills | creative, motivated | product management skills, collaborative development | time management
Andrew | Green | ML, parallel computing | Debugging, writing, presenting | Energetic, paranoid, fun | Product management, VR development, user experience | Time management, [getting nerd sniped](https://xkcd.com/356/), often tired 
Aakanksha | White/Blue | AI/deep learning, Scraping | Writing, VC, business development | outgoing, hustler | VR, Unity, Product Development | time management
Grace | Blue | Backend, AI/ML | presentation skills, planning/organization, time management | ambitious, reliable | VR development, product management | indecision
Farhan | White | Unity, VR, Web Development, Graphics | planning, writing | conscientious, methodical | public speaking, product management | communication

# Our product
We are creating an intuitive pipeline in which users can upload photos of historical sites and recieve a ready to go VR experience they can share with customers. We are also developing a separate VR experience to showcase what can be done with our pipeline. Our pipeline can be divided into 2 sections:

1. Meshroom Automation
Meshroom is an open source photogrammetry software which takes in 2D photos of an object and outputs a 3D mesh object. You can find the source code and documentation for meshroom [here](https://github.com/alicevision/meshroom). Using the software and command line interface is tedious and unintuitive for less technical people, so we are wrapping a convenient GUI around the software package, and creating python scripts that run the necessary commmands to create the 3D mesh. The python scripts that run meshroom can be found [pipeline](https://github.com/cs210/Worldsight/tree/master/pipeline) folder and the code for the GUI can be found [software-demo](https://github.com/cs210/Worldsight/tree/master/software-demo) folder. 

2. Unity File Explorer and Mesh Editor
Once the 3D mesh object is created, it will be placed in the appropriate folder in a new Unity project. The Unity scene will be pre-built with a file explorer, where the user can find and open multiple meshes and then editing them. Then users can rotate, scale, and translate meshes into the appropriate places. The code for this can be found in the [treehacks](https://github.com/cs210/Worldsight/tree/master/treehacks) directory. 

# Dependencies
We are using Unity Version [2019.3.1f1](https://unity3d.com/get-unity/download/archive)


# Team Communication:
Email us at [worldsightvr@gmail.com]
Reach us on Slack at [worldsight.slack.com]

# Resources
Check out our google drive: https://drive.google.com/drive/folders/1RZd6VUiSgIe9Pw3Y4k7hHcuKc-0eMxvx?usp=sharing

