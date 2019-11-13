build: down
	# Current user can not access some files, use `ls -la` to check
	sudo docker-compose build --build-arg USER_ID=`id -u` --build-arg GROUP_ID=`id -g`

up:
	docker-compose up -d mysql
	docker-compose up -d redis
	docker-compose up -d spring
	docker-compose up -d worker
	# docker-compose up -d mongodb

dev:
	docker-compose run --rm -p 3000:3000 app

migrate:
	docker exec -it spring /bin/bash -c "rails db:create && rails db:migrate"

migrate_dev:
	docker-compose run --rm -p 3000:3000 app /bin/bash -c "rails db:create db:migrate"

seed:
	docker exec -it spring /bin/bash -c "rails db:migrate:reset && rails db:seed"

console:
	docker exec -it spring rails c

routes:
	docker exec -it spring rails routes

down:
	docker-compose down

rspec:
	docker exec -it -e RAILS_ENV=test spring spring $(MAKECMDGOALS)

rspecs:
	docker exec -it -e RAILS_ENV=test spring spring rspec

rubocop:
	docker exec -it spring rubocop app/ lib/ db/migrate/ config/

tests:
	docker exec -it -e RAILS_ENV=test spring /bin/bash -c \
	"rubocop app/ lib/ db/migrate config/ && spring rspec && brakeman"

spring:
	docker exec -it $(MAKECMDGOALS)

brakeman:
	docker exec -it spring brakeman

volumes:
	docker volume create --name=mysql_data
	docker volume create --name=bundle_cache
	docker volume create --name=mongo_data
