# Solyto Workspace

This repository is a developer entrypoint for the Solyto project, which consists of multiple services including the API, frontend app, landing page, and local Docker environment. It allows developers to quickly bootstrap and run a full Solyto development environment locally.

Solyto is a productivity hub designed to bring tasks, notes, calendars, and other personal organization tools together in one place. It runs as a responsive web application and can be installed as a Progressive Web App on desktop and mobile.

---

## Repository Structure

This workspace ties together four separate repositories. They are not submodules — `make install` clones them automatically, and they are ignored by this repo's `.gitignore`.

| Directory | Repository | Description |
|---|---|---|
| `localdocker/` | [solyto/localdocker](https://codeberg.org/solyto/localdocker) | Docker Compose setup for local development |
| `api/` | [solyto/api](https://codeberg.org/solyto/api) | Backend API |
| `app/` | [solyto/app](https://codeberg.org/solyto/app) | Main frontend application |
| `landing-page/` | [solyto/landing-page](https://codeberg.org/solyto/landing-page) | Landing page |

Contributions to any of these should be made in their respective repositories, not here.

---

## Requirements

- [Docker](https://docs.docker.com/get-docker/) with the Compose plugin
- Git

## Quickstart

To set up and run the full Solyto development environment:

`make install`

This will:

Clone all required repositories if they are not already present.
Build the Docker images.
Start all services using Docker Compose.

Once running, you can access:

- Frontend app	http://localhost:5173
- Landing page	http://localhost:5174
- API (via nginx)	http://localhost:8000


**Development Environment**

The local Docker setup includes:

- nginx as a reverse proxy for the API
- api backend service
- app frontend application using Vite
- landing-page static site
- mariadb and postgres databases
- redis for caching and sessions

The frontend and landing page ports are exposed for local development. Database services remain internal to the Docker network.

**Contributing**

Each service (api, app, landing-page) is maintained in its own repository. Contributions should be made in the respective repositories. The workspace repository is meant only as an orchestration and development entrypoint.