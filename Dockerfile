FROM ruby:2.4.0-slim

MAINTAINER Aslan Vatsaev <avatsaev@gmail.com>



RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev


ENV APP_NAME api_auth_sample
ENV INSTALL_PATH /$APP_NAME

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile.lock ./

RUN bundle install --binstubs

COPY . .

VOLUME ["$INSTALL_PATH/public"]

CMD puma -C config/puma.rb