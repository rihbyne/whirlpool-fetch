install:
	docker-compose -f docker-compose.build.yml run --rm install

quick-up:
	docker-compose -f docker-compose.build.yml run --rm quick-up

dev-build:
	docker build --no-cache -t whirlpool-fetch-dev:latest --target whirlpool-fetch-dev .

prod-build:
	docker build --no-cache -t whirlpool-fetch-prod:latest --target whirlpool-fetch-prod .

dev-up:
	docker-compose -f dev-docker-compose.yml up --build -d

prod-up:
	docker-compose -f prod-docker-compose.yml up --build -d

dev-logs:
	docker-compose -f dev-docker-compose.yml logs -f

prod-logs:
	docker-compose -f prod-docker-compose.yml logs -f

push-dev:
	docker push rihbyne/whirlpool-fetch-dev:latest

push-prod:
	docker push rihbyne/whirlpool-fetch-prod:latest

tag-dev:
	docker tag whirlpool-fetch-dev:latest rihbyne/whirlpool-fetch-dev:latest

tag-prod:
	docker tag whirlpool-fetch-prod:latest rihbyne/whirlpool-fetch-prod:latest
