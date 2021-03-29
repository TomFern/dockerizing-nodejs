# Dockerizing a Node.js Application Example

[![Build Status](https://tomfern.semaphoreci.com/badges/dockerizing-nodejs/branches/master.svg)](https://tomfern.semaphoreci.com/projects/dockerizing-nodejs)

This is an example project for the following post in the Semaphore CI/CD blog:

[Dockerizing a Node.js Web Application](https://semaphoreci.com/community/tutorials/dockerizing-a-node-js-web-application)

## Run uncontained

```bash
$ cd addressbook
$ npm install
$ npm start
```

## Build Docker Image

```bash
$ docker build -t addressbook .
$ docker run -it addressbook
```

## Run with Docker Compose: app + database

```bash
$ docker-compose up
```

## Run tests with Docker

Stop all containers and execute:

```bash
$ docker-compose run addressbook npm test
```

## LICENSE

Copyright 2021 Rendered Text

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
