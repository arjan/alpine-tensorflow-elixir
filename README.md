# Alpine + Tensorflow + Elixir docker image

This convenience docker image contains:

- Alpine linux
- Tensorflow 1.10
- Elixir 1.6

## Usage:

Use this dockerfile to build an Elixir project which has access to Python with Tensorflow enabled.

An easy way to interact with Python from Elixir is using [ErlPort](http://erlport.org/).

Example `Dockerfile`:


```
FROM acscherp/alpine-tensorflow-elixir:latest

# app

RUN mkdir /app
WORKDIR /app

COPY mix.exs mix.lock ./

RUN mix do deps.get, deps.compile

COPY lib ./

ENV MIX_ENV prod
RUN mix compile

COPY . .

ENTRYPOINT ["/usr/bin/mix", "run", "--no-halt"]
```
