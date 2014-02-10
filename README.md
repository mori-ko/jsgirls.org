# [jsgirls.org](http://jsgirls.org)

## Contributing

Clone this repository.

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

## Deploy

Add remote `https://github.com/jsgirls/jsgirls.github.io` as `www`.

```sh
$ git remote add www git@github.com:jsgirls/jsgirls.github.io.git
```

Push generated resources to `jsgirls.github.io`.

```sh
$ npm run-script deploy
```