install:
	[ -d localdocker ] || git clone git@github.com:solyto/localdocker
	[ -d api ] || git clone git@github.com:solyto/api.git
	[ -d app ] || git clone git@github.com:solyto/app.git
	[ -d landing-page ] || git clone git@github.com:solyto/landing-page.git
	[ -f localdocker/.env ] || (cp "localdocker/.env.example" localdocker/.env && sed -i "s/^USER=.*/USER=$(shell whoami)/" localdocker/.env)
	mkdir -p api/storage/app/public api/storage/framework/{cache,sessions,views} api/storage/logs api/bootstrap/cache
	cd app && npm ci
	cd landing-page && npm ci
	cd api && composer install --no-scripts
	chmod +x localdocker/init-dav.sh
	cd localdocker && docker compose build
	cd localdocker && docker compose up -d api
	cd localdocker && docker compose exec -i api php artisan migrate
	cd localdocker && docker compose up -d

start:
	cd localdocker && docker compose up -d

stop:
	cd localdocker && docker compose down
