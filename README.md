# ???

This will run etsy/statsd with a console backend configured in two instances to feed metrics into them and make the output comparable.
It is intended to prove that repeated metric names can be omited to conserve space and still be calculated correctly by the implementation.

This means that
```
name:1|c
name:1|c
```
can be written as
```
name:1|c:1|c
```
without dropping any data.

## How to run

```shell
docker-compose build
docker-compose up
```

