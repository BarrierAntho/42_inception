DOCKER_COMPOSE_FILE	:=	./srcs/docker-compose.yml

.PHONY:	all build create stop pause unpause restart up down rm ps stat_run stat_pause stat_exited images

# -------------------------------------------------
# SERVICES
# -------------------------------------------------
# BUILD OR REBUILD SERVICES
build:
	docker compose -f $(DOCKER_COMPOSE_FILE) build

# CREATE A SERVICE
create:
	docker compose -f $(DOCKER_COMPOSE_FILE) create

# STOP SERVICES
stop:
	docker compose -f $(DOCKER_COMPOSE_FILE) stop

# PAUSE SERVICES
pause:
	docker compose -f $(DOCKER_COMPOSE_FILE) pause

# UNPAUSE SERVICES
unpause:
	docker compose -f $(DOCKER_COMPOSE_FILE) unpause

# RESTART SERVICES
restart:
	docker compose -f $(DOCKER_COMPOSE_FILE) restart

# -------------------------------------------------
# CONTAINERS
# -------------------------------------------------
# CREATE AND START CONTAINERS
up:
	docker compose -f $(DOCKER_COMPOSE_FILE) up

# STOP AND REMOVE CONTAINERS, NETWORKS, IMAGES AND VOLUMES
down:
	docker compose -f $(DOCKER_COMPOSE_FILE) down

# REMOVE STOPPED CONTAINERS
rm:
	docker compose -f $(DOCKER_COMPOSE_FILE) rm

# LIST CONTAINERS
ps:
	docker compose -f $(DOCKER_COMPOSE_FILE) ps -a

stat_run:
	docker compose -f $(DOCKER_COMPOSE_FILE) ps --status=running

stat_pause:
	docker compose -f $(DOCKER_COMPOSE_FILE) ps --status=paused

stat_exited:
	docker compose -f $(DOCKER_COMPOSE_FILE) ps --status=exited

# LIST IMAGES
images:
	docker compose -f $(DOCKER_COMPOSE_FILE) images --format table
