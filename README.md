# Meshworks

<img src="https://github.com/cs210/Worldsight/blob/master/meshworks-logo.png" width = "1000" height = "200" alt="Meshworks">

Meshworks strives to make the 3D capture of real-world assets effortless and accessible to anyone, anywhere. We are primarily targeting e-commerce sellers, from artists, to fashion designers, to culinary professionals, creating a platform for them to create, customize, and share 3D models of their products through photogrammetry.

[Team Song](https://www.youtube.com/watch?v=VDvr08sCPOc)

[Code Repository](https://github.com/alanefl/seer)

# Team Members
Member | Email | Photo
--- | --- | ---
Jihee Hwang | jiheeh@stanford.edu<br/>http://jiheehwang.com | <img src="http://alarmringing.com/img/sanfran_small.jpg" alt="Jihee Hwang" width="157.5" height="157.5">
Andrew Huang | ahuang98@stanford.edu | <img src="https://andrewhuang121.github.io/images/AndrewHuang.jpg" alt="Andrew Huang" width = "157.5" height="150">
Aakanksha Saxena | asaxena1@stanford.edu | <img src="https://github.com/cs210/Worldsight/blob/master/treehacks/Headshot.png" alt="Aakanksha Saxena" width = "157.5" height="157.5">
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
Team Worldsight is building an intuitive pipeline, Meshworks, for e-commerce sellers to capture, customize, and share 3D models of their products with their customers. 

We are also developing a separate web platform experience to showcase the potential for building on top of the post-pipeline production. Our pipeline can be divided into 2 sections:

<img src="https://github.com/cs210/Worldsight/blob/master/pipeline.png">

## 1. Meshroom Automation
Meshroom is an open source photogrammetry software which takes in 2D photos of an object and outputs a 3D mesh object. You can find the source code and documentation for meshroom [here](https://github.com/alicevision/meshroom). Using the software and command line interface is tedious and unintuitive for people with less technical experience, so we are wrapping a convenient GUI around the software package, and creating python scripts that run the necessary commmands to create the 3D mesh. The python scripts that run meshroom can be found in the [pipeline](https://github.com/cs210/Worldsight/tree/master/pipeline) folder and the code for the GUI can be found in the [software-demo](https://github.com/cs210/Worldsight/tree/master/software-demo) folder. The GUI uses Tkinter, a Python GUI toolkit. 

## 2. Mesh Editor
Once the 3D mesh object is created, it will be placed in a folder designated by the user. After opening the Meshworks application, the user is led to the edit mesh scene. The edit mesh scene lets the user open a file explorer UI in VR, which can be used to directly select the scanned mesh to load. The mesh is then sent directly to the editor scene, where users can rotate, scale, and translate meshes into the appropriate orientation. The code for this can be found in the [treehacks](https://github.com/cs210/Worldsight/tree/master/treehacks) directory. 

# Dependencies
We are using Unity Version [2019.3.1f1](https://unity3d.com/get-unity/download/archive) and the current stable build of [Meshroom](https://github.com/alicevision/meshroom/blob/develop/INSTALL.md). Meshroom is built on top of [AliceVision](https://github.com/alicevision/AliceVision/blob/develop/INSTALL.md) and [CUDA](https://developer.nvidia.com/cuda-downloads).

For best performance, we recommend using Python (>=3.5) and having an nVidia GPU.

# Partnerships
The Facebook Edmod team had two primary deliverables they wanted from us winter quarter: (1) partnerships with historical sites that we could develop as Stanford students and (2) scans of these sites demonstrating the feasibility of using Realities without training. We spent dozens of hours securing official partnerships with historical sites in Italy, The Netherlands, and Spain. This was a project-specific goal that we worked on outside of traditional software development in order to fullfill the deliverable requested by Facebook and to have scans we could use in our MVP pipeline. For a full list of our partnerships, can be found [here](https://github.com/cs210/Worldsight/blob/master/site-outreach-documentation.md).

During spring quarter, due to unexpected developments on campus as a result of the pandemic, all team members will be working remotely from our home locations and our deliverables will be updated to reflect this.

# Team Communication:
Email us at [worldsightvr@gmail.com]

Reach us on Slack at [worldsight.slack.com]

# Resources
Check out our google drive: https://drive.google.com/drive/folders/1RZd6VUiSgIe9Pw3Y4k7hHcuKc-0eMxvx?usp=sharing

Tech Stack in Product Overview in Wiki: https://github.com/cs210/Worldsight/wiki/
