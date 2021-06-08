FROM ubuntu:latest
LABEL author=BradyRussell
LABEL description=UIS_TDX_Bot_Docker_1.0
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y openjdk-14-jr$
VOLUME ~/uis/
RUN wget -P ~/uis/ https://github.com/bradyrussell/UIS_TDX_Bot/raw/master/autot$
CMD cd ~/uis/ && java -jar autotdx.jar
