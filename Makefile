install:
	[ -d localdocker ] || git clone git@github.com:solyto/localdocker
	[ -d api ] || git clone git@github.com:solyto/api.git
	[ -d app ] || git clone git@github.com:solyto/app.git
	[ -f localdocker/.env ] || (cp "localdocker/.env.example" localdocker/.env && sed -i "s/^USER=.*/USER=$(shell whoami)/" localdocker/.env)
	cd app && npm ci
	cd api && composer install --no-scripts
	cd localdocker && docker compose build
	echo "Built successfully. Use make start to start the stack."

start:
	cd localdocker && docker compose up -d

stop:
	cd localdocker && docker compose down
