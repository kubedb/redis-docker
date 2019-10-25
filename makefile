SHELL=/bin/bash -o pipefail

REGISTRY ?= kubedb
BIN      := redis
IMAGE    := $(REGISTRY)/$(BIN)
PATCH    := 5.0.3
TAG      := 5.0-v1

.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker pull $(IMAGE):$(PATCH)
	docker tag $(IMAGE):$(PATCH) $(IMAGE):$(TAG)
