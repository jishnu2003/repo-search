FROM ruby:2.7.0

WORKDIR /repo-search
COPY Gemfile /repo-search/Gemfile
COPY Gemfile.lock /repo-search/Gemfile.lock