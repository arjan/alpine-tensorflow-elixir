VENDOR := acscherp
NAME := $(VENDOR)/$(shell basename $(PWD))

all:
	docker build -t $(NAME) .

release: all
	docker push $(NAME)
