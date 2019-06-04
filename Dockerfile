FROM alpine:3.9

RUN apk add --update elixir python3 python3-dev build-base

RUN pip3 install https://github.com/themech/alpine-python3-tensorflow/releases/download/alpine3.8-tensorflow1.10.1/tensorflow-1.10.1-cp36-cp36m-linux_x86_64.whl

RUN apk del python3-dev build-base

# install hex + rebar
RUN mix local.hex --force
RUN mix local.rebar --force
