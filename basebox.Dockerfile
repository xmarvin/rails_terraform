FROM ruby:2.6.6

ENV PATH /root/.yarn/bin:$PATH

ARG build_without
ARG rails_env
RUN apt-get update -qq && apt-get install -y binutils curl git gnupg cmake python python-dev postgresql-client supervisor tar tzdata
RUN apt-get install -y apt-transport-https apt-utils
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
