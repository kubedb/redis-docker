SHELL=/bin/bash -o pipefail

REGISTRY ?= kubedb
BIN      := redis
IMAGE    := $(REGISTRY)/$(BIN)
PATCH    := 4.0.11
TAG      := 4.0-v2

.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker pull $(IMAGE):$(PATCH)
	docker tag $(IMAGE):$(PATCH) $(IMAGE):$(TAG)
