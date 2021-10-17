<div align="center">
  <h1>Weather-App Containerized Within Docker</h1>
</div> 

The Weather App is a small project developed using JavaScript, CSS, Express and Handlebars. The web-app is containerized in docker with a base image of ARM Architecture built 'FROM scratch'. 

The web-app is cloned off an existing repository, to clone or download the repository - git clone https://github.com/Amulya-coder/Weather-App.git 

The following dependencies are required to run the app: 
  1. express
  2. express-handlebars

To containerize the web app from scratch you'll need to download the most basic package of ARM64 Ubuntu - http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/

This image contains only the required binaries to run the shell and all other dependencies are installed during the runtime.

Note: This image will only work on the ARM64 Architecture.

Running the Web-app in your browser:

  1. pull the docker image - docker pull eshanmandan/eshanbuilds
  2. 
    1. To run the image on ARM64 - docker run --publish 8000:8000 eshanmandan/eshanbuilds
    2. To run the image on linux/amd64 - 
      install the qemu packages - sudo apt-get install qemu binfmt-support qemu-user-static
      run the image - sudo docker run --rm -t --publish 8000:8000 --platform linux/arm64 eshanmandan/eshanbuilds
  3. Open Chrome and open the following URL - http://localhost:8000/