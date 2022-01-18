VERSION=1.21
IMAGE = g1g1/kubectl:$(VERSION)

build:
	(cd docker; docker build --build-arg VERSION=$(VERSION) -t $(IMAGE) .)

push:
	docker push $(IMAGE)