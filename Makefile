createmigration:
	migrate create -ext=sql -dir=sql/migrations -seq init

migrate:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/courses" -verbose up

migratedown:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/courses" -verbose down

sqlcgenerate:
	sqlc generate

.PHONY: migrate
		migratedown
		createmigration
		sqlcgenerate