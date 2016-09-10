FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /bird-monitor
WORKDIR /bird-monitor
ADD Gemfile /bird-monitor/Gemfile
ADD Gemfile.lock /bird-monitor/Gemfile.lock
RUN bundle install
ADD . /bird-monitor
