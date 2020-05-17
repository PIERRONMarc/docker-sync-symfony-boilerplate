#!make
 
.DEFAULT_GOAL := help
.PHONY: help
help:
	@echo "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m"
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' Makefile| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'
	
.PHONY: purge
purge: ## Purge all containers and associated volumes
	-docker-sync stop
	docker-sync-stack clean
 
.PHONY: server-start
server-start: ## Run docker stack and sync
	-docker-sync start
	docker-compose up -d
 
.PHONY: server-stop
server-stop: ## Stop sync and docker stack
	-docker-compose stop
	@docker-sync stop