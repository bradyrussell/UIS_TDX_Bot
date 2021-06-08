FROM ubuntu:latest
LABEL author=BradyRussell
LABEL description=UIS_TDX_Bot_Docker_1.0
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y openjdk-14-jre-headless wget curl gnupg unzip xvfb libxi6 libgconf-2-4 && curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add && echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && apt-get -y update && apt-get -y install google-chrome-stable && wget https://chromedriver.storage.googleapis.com/91.0.4472.19/chromedriver_linux64.zip && unzip chromedriver_linux64.zip && mv chromedriver /usr/bin/chromedriver && chown root:root /usr/bin/chromedriver && chmod +x /usr/bin/chromedriver && mkdir ~/uis/
VOLUME ~/uis/
RUN wget -P ~/uis/ https://github.com/bradyrussell/UIS_TDX_Bot/raw/master/autotdx.jar
CMD cd ~/uis/ && java -jar autotdx.jar
