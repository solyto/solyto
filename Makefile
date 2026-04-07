install:
	[ -d localdocker ] || git clone https://codeberg.org/solyto/localdocker.git
	[ -d api ] || git clone https://codeberg.org/solyto/api.git
	[ -d app ] || git clone https://codeberg.org/solyto/app.git
	[ -d landing-page ] || git clone https://codeberg.org/solyto/landing-page.git
	[ -f localdocker/.env ] || (cp "localdocker/.env.example" localdocker/.env && sed -i "s/^USER=.*/USER=$(shell whoami)/" localdocker/.env)
	cd localdocker && docker compose up -d --build
