.PHONY: help
help:
	go run ./cmd/main.go --help

.PHONY: build
build: 
	docker compose build --no-cache

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: stop
stop:
	docker compose stop

.PHONY: logs
logs:
	docker compose logs -f




