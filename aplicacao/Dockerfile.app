# syntax=docker/dockerfile:1
FROM ruby:3.0.0

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0", "&&"]