FROM ruby:2.5
RUN gem install down:5.0
WORKDIR /
RUN gem install file-utils:2.7
COPY  . .
CMD ["./latte.rb"]