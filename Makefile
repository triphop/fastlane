TAG = "1.0.0"

all:
	docker buildx build \
		--push \
		--platform linux/arm64/v8,linux/amd64 \
		--tag yanshoutong/fastlane:${TAG} .

latest: all
	docker buildx build \
		--push \
		--platform linux/arm64/v8,linux/amd64 \
		--tag yanshoutong/fastlane:latest .

.PHONY: all latest
