<p align="center">
  <img src="https://raw.githubusercontent.com/solyto/assets/main/solyto_logo.png" />
</p>

Solyto is a free, private, all-in-one personal management app — covering your todos, contacts, calendar, notes, news, music and book library in one place, with one login, and one coherent interface. No AI features, no tracking, no subscriptions, no bullshit. Use it on the web, install it as a PWA, or self-host it entirely on your own infrastructure. Built out of frustration with bloated tools, fragmented self-hosted stacks, and services that keep adding things you never asked for.



---



<p align="center">
  <img src="https://raw.githubusercontent.com/solyto/assets/main/screenshots/landing-page.png" />
</p>

---

![](https://raw.githubusercontent.com/solyto/assets/main/screenshots/music-library.png)

---

## Feature Set

- Todos

- Calendars (with DAV sync)

- Contacts (with DAV sync)

- Notebook (folders, markdown notes, WYSIWYG)

- News reader

- Music Library

- Book Library

- Game Library

- Recipe Library

- Quote Library

- Link Library

- Check In (track your mood, health, etc.)

- Time Tracking

- Finance Tracking (Income / Wealth)

- Clipboard (copy things from device to device)
  
  

**Highlights**

- Import your music from Deezer or Discogs, your books from Hardcover or Goodreads

- Get notifications about new releases from your favorite artists or authors

- Get music/book recommendations (entries you already know or new ones)

- Automatically save links to your library by sending them to our Telegram Bot

- Hide certain categories of todos (for example work-related todos)

- Get notifications about your upcoming day (via Telegram, Email or Push Notifications), your tasks, etc.

- One-line creation for Todos with short commands

- Dashboard combining all your data

- Pomodoro Timer in the Time Tracking section
  
  

**Privacy & Security**

- Solyto only contacts external services when you explicitly request it — for example when importing from Deezer or Goodreads. Nothing happens in the background without your knowledge
- No tracking, no cookies (only one localStorage auth entry in your browser), no analytics
- No bullshit. No features you don't need. No AI, no subscriptions.
  
  

**Pricing**

Solyto is free. Use it at [solyto.app](https://solyto.app), run it locally via our docker compose stack or selfhost it on your server via our Docker images.



****

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

---

## For selfhosters

Do you want to host solyto on your own Raspberry Pi, VPS or cloud server? Head over to [solyto/selfhosted](https://github.com/solyto/selfhosted) for instructions. We provide a ready-to-deploy docker compose stack and pre-built docker images.

---

## For interested users

Do you want to check solyto out? It's free and available at [solyto.app](https://solyto.app).

---

## Repository Overview

| Directory       | Repository                                                    | Description                                |
| --------------- | ------------------------------------------------------------- | ------------------------------------------ |
| `localdocker/`  | [solyto/localdocker](https://github.com/solyto/localdocker)   | Docker Compose setup for local development |
| `selfhosted/`   | [solyto/selfhosted](https://github.com/solyto/selfhosted)     | Stack for self-hosting                     |
| `api/`          | [solyto/api](https://github.com/solyto/api)                   | Backend API                                |
| `app/`          | [solyto/app](https://github.com/solyto/app)                   | Main frontend application                  |
| `landing-page/` | [solyto/landing-page](https://github.com/solyto/landing-page) | Landing page                               |

---

# Contributions

We strive to be as user-/community-focused as humanly possible.

If you are a developer, a frontend designer or even a project manager, we are more than happy to get more helping hands. Visit the respective repositories for git-based contributions.

If you are user, let us know your feedback! Are we missing a feature, is there a bug? Happy to fix it!

This repository is only meant as an overview.