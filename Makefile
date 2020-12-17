
PARAMS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

.PHONY: install
install:
	docker-compose build
	docker-compose run --rm stripe-cli login

.PHONY: up
up:
	docker-compose up php stripe-cli

.PHONY: stripe-trigger
stripe-trigger:
	docker-compose run --rm stripe-cli trigger ${PARAMS}

.PHONY: destroy
destroy:
	docker-compose down --rmi all --volumes

.PHONY: reinstall
reinstall:
	@make destroy
	@make install
