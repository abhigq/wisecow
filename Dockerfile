FROM ubuntu:latest

WORKDIR /app

RUN apt-get -y update && apt-get -y install sudo

COPY wisecow.sh .

RUN sudo apt install fortune-mod cowsay -y 

EXPOSE 4499 

CMD ["wisecow.sh","--port","80"]