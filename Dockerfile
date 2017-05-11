FROM ruby:2.3.0

RUN apt-get clean && apt-get update && apt-get install -y --force-yes --fix-missing\
  nodejs
RUN mkdir /app
WORKDIR /app
