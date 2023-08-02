FROM ruby:2.7.2-alpine

RUN apk update && apk add --no-cache build-base

WORKDIR /app
ADD Gemfile  .

RUN \
   apk --update add ruby && \
   gem install bundler --no-document && \
   bundle config --global silence_root_warning 1 && \
   bundle install --quiet

