# [jsgirls.org](http://jsgirls.org)

## Contributing

Fork this repository and send a pull request **to development branch**.

### Event pages

There are event pages in `/src/documents/events`.

## Requirement

- [Node.js](http://nodejs.org/) - `0.10.x` newest
    - [DocPad](http://docpad.org/) - Static site generator
    - [Grunt](http://gruntjs.com/) - Task runner
    - [Jade](http://jade-lang.com/) - Template engine
    - [Marked](https://github.com/chjj/marked) - Markdown parser

## Debug

Clone this (or your forked) repository.

```sh
$ git clone git@github.com:jsgirls/jsgirls.org.git
```

Install `docpad`.

```sh
$ npm install -g docpad
```

Install node modules.

```sh
$ npm install
```

Run at `localhost:9778`.

```sh
$ docpad run
```