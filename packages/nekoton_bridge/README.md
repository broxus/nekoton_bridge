# HOW to write rust code for nekoton_bridge
The first thing you need understand is because of `frb` ability to generate Dart code correctly only
from single rust file, we must merge all necessary source code into single file.

Thanks to `bin/merger.dart` we can write code in separated modules as a usual code written in rust.
But here's some nuances you should understand:
1) All code that should be generated to Dart side must be located inside file with name pattern 
`*api.rs`, for example, `logger_api.rs` or `models_api.rs`. Code in this files will be merged 
into `merged.rs` file that is target for `flutter_rust_bridge`.
2) You don't need to import local crates as `pub`. `frb` can look through local imports itself.
3) Use `pub` for external structures as described in official doc of `frb`, but in `bin/merger.dart`
whole hierarchy of crate will be converted to public if there is at least one pub import in any file.


<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
