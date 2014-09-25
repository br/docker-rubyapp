FROM ubuntu

RUN apt-get update -q && apt-get install -qy \
  nginx \
  curl \
  git \
  nodejs \
  postgresql \
  libpq-dev

RUN curl -sSL https://get.rvm.io | bash -s stable && \
  /bin/bash -l -c "rvm requirements" && \
  /bin/bash -l -c "rvm install 2.0.0" && \
  /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"~
