FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

ENV TZ=Sao_Paulo/America/Sao_Paulo

# ser TZ
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

RUN apt-get install -y openjdk-17-jdk
    
RUN groupadd -g 1000 romulo
RUN useradd -d /home/romulo -s /bin/bash -m romulo -u 1000 -g 1000

RUN  curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list

RUN apt-get update && apt-get install -y brave-browser

USER romulo