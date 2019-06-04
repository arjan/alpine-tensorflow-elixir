VENDOR := acscherp
NAME := $(VENDOR)/$(shell basename $(PWD))

all:
	docker build -t $(NAME):latest -t $(NAME):$(shell cat VERSION) .

release: all
	docker push $(NAME)
