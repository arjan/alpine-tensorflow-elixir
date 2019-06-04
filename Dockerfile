FROM tensorflow/tensorflow:nightly-py3

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update
RUN apt-get install -y elixir
RUN apt-get install -y erlang-dev

# install hex + rebar
RUN mix local.hex --force
RUN mix local.rebar --force
