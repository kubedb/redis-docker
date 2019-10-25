SHELL=/bin/bash -o pipefail

REGISTRY ?= kubedb
BIN      := redis
IMAGE    := $(REGISTRY)/$(BIN)
TAG      := 4.0.6-v2

.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker build -t $(IMAGE):$(TAG) .
