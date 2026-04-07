install:
	[ -d localdocker ] || git clone git@github.com:solyto/localdocker
	[ -d api ] || git clone git@github.com:solyto/api.git
	[ -d app ] || git clone git@github.com:solyto/app.git
	[ -f localdocker/.env ] || (cp "localdocker/.env.example" localdocker/.env && sed -i "s/^USER=.*/USER=$(shell whoami)/" localdocker/.env)
	cd localdocker && docker compose up -d --build
