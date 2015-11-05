Docker Image for dns64 w/ [unbound](https://www.unbound.net/)
====

How to use.
----

1. Setup [Docker](https://www.docker.com/).
2. Run follow commands.

#### start unbound

```console
$ docker run -d --name=unbound-dns64 yokogawa/unbound-dns64
```

If you use `./run` script.

```console
$ ./run
```

#### stop unbound

```console
$ docker stop unbound-dns64
```

#### unbound-control

```console
$ docker exec -t unbound-dns64 unbound-control dump_cache
```

If you use `./run` script.

```console
$ ./run unbound-control dump_cache
```

#### check logs

```console
$ docker logs unbound-dns64
```

### use bash

```console
$ ./run bash
```

