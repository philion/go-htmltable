default: vendor

fmt:
	go fmt ./...

vendor:
	go mod vendor

test:
	go test  -coverpkg=./... -coverprofile=coverage.out -timeout=10s  ./...

coverage: test
	go tool cover -html=coverage.out

install:
	go install -v ./...

build:
	go build -v ./...

.PHONY: build fmt coverage test vendor
