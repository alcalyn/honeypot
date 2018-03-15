all: run

run:
	docker-compose up -d

bash:
	docker exec -it honeypot bash
