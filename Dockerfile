FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
  git \
  openssl=1.1.* \
  vim \ 
  nano \
  gpg \
  && rm -rf /var/lib/apt/lists/*

COPY cryptogramics clair fichier1.txt fichier2.txt maClePub.pub signature /tp/

WORKDIR /tp
