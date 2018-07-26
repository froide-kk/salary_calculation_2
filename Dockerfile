FROM ruby:2.4.1

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libmysqlclient-dev \
                       nodejs

RUN mkdir /webapp
WORKDIR /webapp

ADD Gemfile /webapp/Gemfile
ADD Gemfile.lock /webapp/Gemfile.lock

RUN bundle install

ADD . /webapp

RUN mkdir -p tmp/sockets

