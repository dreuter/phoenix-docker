# Dockerfile for the Phoenix Framework on Ubuntu 14.04

## Getting the image

```bash
$ docker pull dreuter/ubuntu-phoenix:latest
```

## Example app using this docker image

You can find an example app with it's configuration in phoenix-example.

To run this app please follow these steps:

```bash
$ git clone https://github.com/dreuter/phoenix-docker
$ cd phoenix-docker/phoenix-example
$ docker-compose up
```

And then navigate to [http://localhost:4000](http://localhost:4000)
