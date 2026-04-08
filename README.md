<div style="width: 100%; text-align:center">
![Solyto Logo](https://raw.githubusercontent.com/solyto/assets/main/solyto_logo.png)
</div>

# Solyto

Welcome to solyto, a productivity hub designed to bring tasks, notes, calendars, and other personal organization tools together in one place. No bullshit, no price.

---


## For developers

Do you want to run solyto locally and contribute? solyto consists of several repositories, reflecting the different architectural components it consists of.


**Quick start**

Clone this repo and run `make install` on your local machine to automatically clone all sub-repos, set up a docker compose stack, initialize the databases and run it. Services will run at http://localhost:5173 (app), http://localhost:8080 (api) and http://localhost:5174 (landing page). More info at [solyto/localdocker](https://github.com/solyto/localdocker).

_Requirements_

- git
- node (22+)
- composer (2)
- docker
- docker compose

## For selfhosters

Do you want to host solyto on your own Raspberry Pi, VPS or cloud server? Head over to [solyto/selfhosted](https://github.com/solyto/selfhosted) for instructions. We provide a ready-to-deploy docker compose stack and pre-built docker images.

## For interested users

Do you want to check solyto out? It's free and available at [solyto.app](https://solyto.app).

---

## Repository Overview

| Directory | Repository | Description |
|---|---|---|
| `localdocker/` | [solyto/localdocker](https://github.com/solyto/localdocker) | Docker Compose setup for local development |
| `selfhosted/` |  [solyto/selfhosted](https://github.com/solyto/selfhosted) | Stack for self-hosting
| `api/` | [solyto/api](https://github.com/solyto/api) | Backend API |
| `app/` | [solyto/app](https://github.com/solyto/app) | Main frontend application |
| `landing-page/` | [solyto/landing-page](https://github.com/solyto/landing-page) | Landing page |

Contributions to any of these should be made in their respective repositories, not here.

---

# Contributions

Each service (api, app, landing-page) is maintained in its own repository. Contributions should be made in the respective repositories. The workspace repository is meant only as an overview and endpoint for different use cases.