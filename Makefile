APP=intern
CONTAINER_EXISTS := $(shell docker ps -a | grep $(APP) | wc -l)

default: help

.PHONY: help build build-nc run exec stop clean

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# DOCKER TASKS
# Build the container
build: ## Build the image
	docker build -t $(APP) .

build-nc: ## Build the image without caching
	docker build --no-cache -t $(APP) .

run: ## Run the container on port 80:80 with automatically remove
	docker run -p 80:80 --rm --name $(APP) -d $(APP)

exec: ## Run bash into a running container
	docker exec -it $(APP) /bin/bash

stop: ## Stop a running container
	docker stop $(APP)

clean: ## Clean the images and the container if exists
	@if [ "$(CONTAINER_EXISTS)" = "1" ]; then docker stop $(APP); fi
	docker rmi $(APP)
	docker rmi macpaw/internship
