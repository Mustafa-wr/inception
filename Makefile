up:
	cd srcs && docker compose up -d

down:
	cd srcs && docker compose down

build:
	cd srcs && docker compose build

logs:
	cd srcs && docker compose logs -f

# clean: down
# 	@docker compose rm -f

fclean: down
	docker system prune --all --force
	@if [ ! -z "$(docker images -q)" ]; then \
		docker rmi -f $$(docker images -q); \
	fi

re: fclean up
