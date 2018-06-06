FROM ubuntu:16.04
RUN apt-get -y update -q
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt-get install -y curl
#RUN apt-get update -q
#RUN curl -L https://get.rvm.io | bash -s stable --ruby
RUN curl -sSL https://get.rvm.io | bash
#RUN source /home/root/.rvm/scripts/rvm
#RUN rvm -v
#RUN apt-get install -y rvm
#sudo apt-get update
#RUN  gem install -y rake -v '12.1.0' --source 'https://rubygems.org/'
#RUN  apt-get install -y build-essential patch ruby-dev zlib1g-dev
##sudo gem install nokogiri -v '1.8.1' --source 'https://rubygems.org/'
#RUN  apt-get -y install nodejs

#RUN  bundle install -y


