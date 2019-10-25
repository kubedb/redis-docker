SHELL=/bin/bash -o pipefail

REGISTRY ?= kubedb
BIN      := redis
IMAGE    := $(REGISTRY)/$(BIN)
TAG      := 5.0.3-v1

.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker build -t $(IMAGE):$(TAG)
