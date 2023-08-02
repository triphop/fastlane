TAG = "1.0.0"

all:
	docker build -t fastlane:${TAG} .

.PHONY: all
