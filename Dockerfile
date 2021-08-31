FROM ruby:2.5 
WORKDIR /
COPY . .
RUN bundle install
RUN alias latte = ruby core/latte.rb  
RUN latte install brew
 

