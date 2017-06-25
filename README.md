# ros-qlot

roswell's qlot integration. see [qlot](https://github.com/fukamachi/qlot) to understand the concept of ``qlot``.

## To install

```
$ ros install roswell/ros-qlot
```

## Usage

```
# command below to prepare current directory to 'ros qlot' ready.
$ ros init qlot
```

```
# equivalent to `qlot install`
$ ros qlot install
```

```
# equivalent to `qlot update`
$ ros qlot update
```

```
# equivalent to `qlot buldle`
$ ros qlot bundle
```

```
# `qlot exec` can be ommited.
$ clackup app.lisp
```

## difference.
While original qlot uses ``./quicklisp/`` , ros-qlot uses ``.roswell/lisp/quicklisp/``.

## Author
SANO Masatoshi (snmsts@gmail.com)

## License
Licensed under the MIT License.
