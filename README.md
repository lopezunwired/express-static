# mini-webserver
Provides a minimal webserver (via Express.js) to expose static files from the Docker host via HTTP. This image is built with Alpine Linux (base image `8.1.4-alpine`) and aims for a minimal size. You can copy all your static content in the `./content` folder. A sample single-page web application, Hyperspace by HTML5 UP if provided.

## Usage

Create your docker image from the project diretory by running:

`docker build -t <image-name> .`

You can expose a local directory which you want to have served via the `mini-webserver` by starting it with

`docker run --name mini-web -p 8080:3000 -d <image-name>`

In this example, the port on the docker host where the `mini-web` is reachable is `8080`.

### Logging

The Express.js app uses `morgan` to pipe the web logs to the `STDOUT`. This means that the logs are visible via `docker logs mini-web` (if the container name is `mini-web`).