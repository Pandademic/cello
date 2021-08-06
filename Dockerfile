FROM ruby:2.5
RUN gem install down:5.0
WORKDIR /
RUN gem install file-utils
RUN gem install rubocop
RUN git branch Docker-build
RUN git checkout Docker-build
COPY  . .
RUN rubocop -A
RUN git commit -m "Docker build"
RUN gh pr create --title "Docker build" --body "Builded"
CMD ["./core/latte.rb"]
