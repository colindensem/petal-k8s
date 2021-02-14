FROM elixir:1.10.3

ENV PHX_VERSION 1.5.7
ENV NODE_MAJOR 14

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN set -x &&\
  mix local.hex --force &&\
  mix local.rebar --force &&\
  mix archive.install hex phx_new $PHX_VERSION --force &&\
  curl -sL https://deb.nodesource.com/setup_$NODE_MAJOR.x | bash - &&\
  apt-get install -y nodejs inotify-tools &&\
  npm -g install yarn
