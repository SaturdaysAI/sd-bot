start-docker:
	sudo service docker start

build:
	docker build -t poetry:3.10.5-slim-buster .

bash:
	docker run --rm \
	-v $(PWD):/usr/src/app \
	-w /usr/src/app \
	-it poetry:3.10.5-slim-buster bash

bot:
	docker-compose \
	--env-file .env \
	-f docker-compose.yml \
	up