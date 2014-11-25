FROM ruby:2.1.5

WORKDIR /tmp
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY . /opt/app

ENTRYPOINT ["/usr/local/bundle/bin/bundle", "exec"]
CMD ["rake", "spec"]
