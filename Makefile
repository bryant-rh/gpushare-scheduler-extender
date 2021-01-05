PLATFORM := linux/amd64,linux/arm64

build:
	docker buildx build --push --progress plain --platform=${PLATFORM}	\
		--file=Dockerfile \
		--tag=bryantrh/k8s-gpushare-schd-extender:1.0 \
		.
