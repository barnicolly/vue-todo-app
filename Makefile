up:
	cd docker && docker-compose up -d --build
ps:
	cd docker && docker-compose ps
remove:
	cd docker && docker-compose rm -s -f
node:
	cd docker && docker-compose exec node sh
dev:
	cd docker && docker-compose exec node sh -c "npm run serve"
cs:
	cd docker && docker-compose exec node sh -c "npm run lint -- --fix"
	cd docker && docker-compose exec node sh -c "npx prettier . --write"
update-snapshots:
	cd docker && docker-compose exec node sh -c "npm run test -- -u"
go: up ps dev

down:
	cd docker && docker-compose down

reload: remove go
