FROM ruby:2.5
RUN gem install down
RUN gem install file-utils
WORKDIR /
COPY  . .
CMD ["./latte.rb"]