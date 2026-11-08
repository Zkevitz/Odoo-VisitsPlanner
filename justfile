run :
    uv run main.py

# build app image
build-images :
    docker compose build

# start app
compose :
    docker compose up -d

check :
    docker compose ps

db-logs :
    docker compose logs -f db

app-logs :
    docker compose logs -f app

stop :
    docker compose down -v --remove-orphans

erase-volumes :
    docker compose down -v