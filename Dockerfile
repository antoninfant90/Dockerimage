FROM ubuntu:16.04


RUN apt-get -y update -q
RUN apt-get install -y software-properties-common
#RUN locate bundle
#RUN export PATH=$PATH:/opt/ruby-enterprise-1.8.7-2010.02/bi
#RUN /usr/bin/bundle install -y
#RUN  bundle install -y
#RUN gem install rake -v '12.1.0' --source 'https://rubygems.org/'

RUN apt-get install -y rubygems

RUN gem install rake -v '12.1.0' --source 'https://rubygems.org/'

RUN apt-get install -y build-essential patch ruby-dev zlib1g-dev

RUN apt-get -y install nodejs

RUN apt-get install -y curl

RUN curl -sSL https://get.rvm.io | bash

RUN echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc
#RUN . /etc/profile.d/rvm.sh | bash
RUN useradd -G rvm jenkins

#RUN /etc/profile.d/rvm.sh
RUN /usr/local/rvm/bin/rvm-shell -c "rvm autolibs enable"
RUN /usr/local/rvm/bin/rvm-shell -c "rvm install 2.4.1"
#RUN apt-get install -y gem
#RUN rvm install -y "ruby-2.4.1"

RUN apt-get install -y git

RUN gem install bundler

RUN chmod -R 777 /var/lib/jenkins

#RUN bundle install
