NAME = scsnowboards/misp-docker
VERSION = 0.1.0

all: build run

build:
	docker build -t $(NAME):$(VERSION) --build-arg MYSQL_ROOT_PASSWORD=my_strong_root_pw .

run:
	docker run -d -p 443:443 -v /dev/urandom:/dev/random --env-file=env.txt --restart=always --name misp $(NAME):$(VERSION)



