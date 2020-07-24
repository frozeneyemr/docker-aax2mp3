# docker-aax2mp3

This Docker-Container (based on functions from https://code-bude.net/2017/02/12/audible-aax-dateien-in-mp3-umwandeln-unter-linux/) is able to convert downloaded Audible aax-files to mp3 for usage on other devices without Audible software.

## instructions

First of all you need your Audible authentication-code! Check the site below for getting it! After few unsuccessful tests I've decide to build a container only for the encoding purposes.

You're only able to encode your own Audible files, matching to your authentication code!

## how to use

* Log in to audible on a webbroser, go to your library and download the needed files (all in the same folder).

* Now simply run the docker container: `docker run -it -v <your folder with downloaded aax files>:/data frozeneyemr/aax2mp3:latest`

* This will pull the image and start the bash in it, there you need to put in following: `find /data/*.aax -exec /aax2mp3tools/AAXtoMP3 --authcode <your authcode> --single {} \;`

+ This will find and encode all aax files in your folder inside an own folder structure. Existing encodings will not be overwriten!

## why you'd use it?
The needed ffmpeg things are in this container so your own installation could be clean. And it still works :)
