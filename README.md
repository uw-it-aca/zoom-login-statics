# zoom-login-statics

App template

* HTML/CSS/JS
* Vite 2

## Getting Started

Make sure you have [node.js](https://nodejs.org/en/) installed on your machine before proceeding.

Click the Use this template button and clone the repository.

```
$ git clone git@github.com:uw-it-aca/zoom-login-statics.git
$ cd zoom-login-statics
$ npm install

```
### Compiles and hot-reloads for development
```
$ npm run dev
```

You can view the development build here: http://localhost:3000/unauthorized-user/

### Preview for production
Configure vite.config.js for specific build options. This produces the final bundle released in production. The app container is built and deployed via Docker using an Nginx web server.

#### Default port
```
$ docker-compose up --build
```
You can preview it here: http://localhost:8000/unauthorized-user/

#### Custom port

Specify a different port number to be used by the Docker container in the case that port :8000 is already being used by another application. Port :8006 is used as an example.

```
$ RUNSERVER_PORT=8006 docker-compose up --build
```
You can preview it here: http://localhost:8006/unauthorized-user/
