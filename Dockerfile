FROM ruby:2.5 as DEPS
COPY  . .
WORKDIR /
RUN gem install down:5.0
WORKDIR /
RUN gem install file-utils
WORKDIR /
RUN gem install rubocop
WORKDIR /
FROM ruby:2.5 as Linter
WORKDIR /
COPY . .
RUN rubocop -A
FROM ubuntu:20 as Ubuntu
WORKDIR /
COPY . . 
RUN apt install ruby-full
RUN ruby --version
RUN bundle install
CMD [ "ruby","core/latte.rb help" ]
