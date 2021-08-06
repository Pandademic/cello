FROM ruby:2.5
COPY  . .
WORKDIR /
RUN gem install down:5.0
WORKDIR /
RUN gem install file-utils
WORKDIR /
RUN gem install rubocop
WORKDIR /
RUN rubocop -A
RUN echo "testing help"
RUN ruby core/latte.rb help
