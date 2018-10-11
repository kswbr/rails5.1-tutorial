FROM ruby:2.5.1-alpine

RUN apk update && apk upgrade && apk add --update --no-cache alpine-sdk tzdata postgresql-dev nodejs sqlite sqlite-dev
RUN mkdir /app
WORKDIR /app

ARG BUNDLE_OPTIONS


ADD myapp/Gemfile /app/Gemfile
ADD myapp/Gemfile.lock /app/Gemfile.lock
RUN bundle install --path vendor/bundle -j4 ${BUNDLE_OPTIONS}
ADD myapp/. /app

RUN bundle exec rake assets:precompile

EXPOSE  3000
