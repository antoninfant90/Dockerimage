FROM ubuntu:16.04

RUN apt-add-repository -y ppa:rael-gc/rvm 

RUN apt-get update -q

RUN apt-get install rvm.

