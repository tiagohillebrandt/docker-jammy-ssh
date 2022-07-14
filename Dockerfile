FROM ubuntu:jammy
LABEL maintainer="Tiago Hillebrandt <thillebrandt@awesomemotive.com>"

RUN apt-get update && apt-get install ssh rsync -qy

RUN mkdir -p /root/.ssh && touch /root/.ssh/known_hosts && ssh-keyscan github.com >> /root/.ssh/known_hosts && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
