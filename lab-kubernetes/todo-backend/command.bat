docker run --detach --name mariadb -p 3306:3306 --env MARIADB_ROOT_PASSWORD=user --env MARIADB_DATABASE=todo --network todo mariadb:latest 



docker build -t todofrontend ../todo-frontend
docker build -t todobackend .
docker run --name todofrontend -d -p 8080:8080  --network todo todofrontend
docker run --name todobackend -d -p 3000:3000 --network todo todobackend
