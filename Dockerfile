FROM ruby:3.0
RUN bundle config --global frozen 1
RUN bundle install
WORKDIR /
COPY ..
RUN gem install rubocop
RUN rubocop
CMD ruby core/cello.rb add getting-started --main
CMD ruby core/engine.rb add getting-started --main
