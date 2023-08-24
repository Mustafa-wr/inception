up:
	@docker compose up -d

down:
	@docker compose down

build:
	@docker compose build

logs:
	@docker compose logs -f

# clean: down
# 	@docker compose rm -f

fclean: down
	docker system prune --all --force
	@if [ ! -z "$(docker images -q)" ]; then \
		docker rmi -f $$(docker images -q); \
	fi

re: fclean up
