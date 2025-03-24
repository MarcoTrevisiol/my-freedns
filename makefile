all: _build/amd-image.tar _build/arm-image.tar

_build/amd-image.tar: Dockerfile my-freednsclient _build
	docker buildx build --platform linux/amd64 -t my-freednsclient:latest --output type=docker,dest=- . >$@

_build/arm-image.tar: Dockerfile my-freednsclient _build
	docker buildx build --platform linux/arm/v7 -t my-freednsclient:latest --output type=docker,dest=- . >$@

_build:
	mkdir -p $@
