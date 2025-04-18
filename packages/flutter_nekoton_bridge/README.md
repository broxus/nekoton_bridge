# Nekoton bridge for flutter

[![License: AGPLv3][license_badge]][license_link]
[![Build & Test](https://github.com/broxus/nekoton_bridge/actions/workflows/build.yml/badge.svg)](https://github.com/broxus/nekoton_bridge/actions/workflows/build.yml)

This package based on [flutter_rust_bridge](https://cjycode.com/flutter_rust_bridge) generator.

## Gettind Started as user 🚀

### Installation ⚙️

Add [flutter_nekoton_bridge][pubdev_link] to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_nekoton_bridge:
```

### Logger 🪵

The first thing you need to do is to setup logger. You can use any logger you want, but we recommend to use [logging](https://pub.dev/packages/logging)-based package. For example, you can check [fancy_logger](https://github.com/broxus/ever_wallet_flutter_new/tree/main/packages/fancy_logger) from Sparx wallet.

To setup logger you need to call `setupLogger` function from `flutter_nekoton_bridge` package. It's a good idea to provide mapping from `LogLevel` to your logger levels. For example, you can use `LogLevel` from `logger` package:

```dart
  /// The main log level map
  static final Map<Level, fnb.LogLevel?> _logMap = {
    Level.ALL: fnb.LogLevel.Trace,
    Level.FINEST: fnb.LogLevel.Trace,
    Level.FINER: fnb.LogLevel.Trace,
    Level.FINE: fnb.LogLevel.Debug,
    Level.CONFIG: fnb.LogLevel.Debug,
    Level.INFO: fnb.LogLevel.Info,
    Level.WARNING: fnb.LogLevel.Warn,
    Level.SEVERE: fnb.LogLevel.Error,
    Level.SHOUT: fnb.LogLevel.Error,
    Level.OFF: null,
  };

  Level _toLogLevel(fnb.LogLevel level) {
    return _logMap.keys.firstWhere((key) => _logMap[key] == level);
  }
```

Then you can use it in ```_logHandler``` callback:

```dart
  void _logHandler(fnb.LogEntry logEntry) {
    final logLevel = _toLogLevel(logEntry.level);

    _log.log(logLevel, '${logEntry.tag}: ${logEntry.msg}');
  }
```

And finally, you can setup logger in your app using this code:

```dart
   fnb.setupLogger(
      level: logLevel,
      mobileLogger: mobileLogger,
      logHandler: _logHandler,
   );
```

Where ```level``` is your default log level, ```mobileLogger``` is just a flag that you want to use mobile logger (if you want to use your own logger, you can set it to false) and ```logHandler` is a callback that will be called for each log entry.

Please note: you should setup logger before any other calls to bridge.

### Bridge initialization 🎬

To initialize bridge you need to call ```initRustToDartCaller``` function from the package. It will register all callbacks and initialize bridge. You should call it before any other calls to bridge (just call it right after logger setup).

```dart
  fnb.initRustToDartCaller();
```

It's a good idea to check how we do it in Sparx wallet in [NekotonRepository](https://github.com/broxus/ever_wallet_flutter_new/blob/main/packages/nekoton_repository/lib/src/nekoton_repository.dart).

### Bridge usage 📈

#### Fixed point numbers 🔝

We don't used [Fixed](https://pub.dev/packages/fixed) package in this package because in the most cases we don't have scale digits in our amounts ¯\_(ツ)_/¯.

But! We highly recommend to use it package for fixed point numbers in your app because you have to have scale digits in your amounts for correct calculations and representation. So, tt's a good idea to use it in your app!

Fixed allows you to store and manipulate fixed point numbers. Fixed point numbers are numbers that have a fixed number of digits after the decimal point. You shouldn't use floating point numbers for financial calculations because they are not precise enough. Using strings 🩼 for storing fixed point is also not a good idea because it's not efficient and can produce bugs due to decimal separator difference (, or .) and can't be used in calculations. Fixed point numbers are precise and can be used for financial calculations.

For [example](https://fixed.onepub.dev/constructors):

```dart
Fixed.fromInt(1234, scale: 3); // == 1.234

Fixed.fromBigInt(BigInt.from(1234), scale: 3); // == 1.234

final t1 = Fixed.fromDecimal(Decimal.fromInt(1), scale: 2); // == 1.00

final t3 = Fixed.parse('1.234', scale: 2); // == 1.23, scale: 2
```

Please note: this is the least desireable method as it can introduce rounding errors:

```dart
final t2 = Fixed.fromNum(1.234, scale: 3); // == 1.234
```

#### Money 💰

Also we recommend to use [money2](https://pub.dev/packages/money2) package for money calculations. It's a good idea to use it for all money calculations in your app.

Please note that due to found [bug](https://github.com/onepub-dev/money.dart/issues/75) we highly recommend to use [money2_improver](https://pub.dev/packages/money2_improver) for parsing amounts from strings. Also this package contains some useful extensions for money2.

## Getting Started as hacker 👨🏻‍💻

You should start installing the main things:
* [Flutter](https://docs.flutter.dev/get-started/install)
* [Rust](https://www.rust-lang.org/learn/get-started)

Then your adventure continues by installing dependencies:

```
cargo install flutter_rust_bridge_codegen
cargo install cargo-xcode
rustup target add \
    aarch64-linux-android \
    armv7-linux-androideabi \
    x86_64-linux-android \
    i686-linux-android
cargo install cargo-ndk --version 2.6.0
rustup target add aarch64-apple-ios x86_64-apple-ios
rustup target add aarch64-apple-ios-sim
dart pub global activate melos
```

At this point, all preparations should be completed and we can start compiling the library.

## Melos magic 🪄

Using [melos](https://melos.invertase.dev/) makes it very easy to work with the project, so enjoy.

You can run any job interactively run running `melos run` and selecting needed case or directly (e.g. `melos run test`).

### Bootstrap 🏁

Melos takes care about dependencies of all packages, including managing of local-generated library version. So, just run:

```
melos bs
```

## Codegen 🦾

This thing will run all code generators for all packages:

```
$ melos run codegen
```

### Build 🪛

The library consists of dart files and platform-specific binaries. pub.dev has a hard 100 MB upload limit, so we can't distribute platform-specific (they can be really huge!) this way. So, we should use something like Github releases for distribute it. Commands below will build everything for two platforms:

```
melos run build:ios
melos run build:android

# or just
melos build
```

You can find `platform-build/NekotonBridge.xcframework.zip` and `platform-build/android.tar.gz` in case of success. Rust build cache will be in `target/` directory.

### Clean up 🧹

Just run commands below to clean all, including build directories and flutter projects.

```
melos clean
```

## Example 🤡

You can find dumbest example in `packages/flutter_nekoton_bridge/example`. During build scripts will copy platform-specific binaries from `platform-build/` folder, or download prebuild binaries from github (if you don't build binaries locally).

You can open the project in Android studio or Visual studio code, or even build and run it using `flutter run`.

### iOS build 

During build scripts copies platform-specific binaries to `packages/flutter_nekoton_bridge/ios/Frameworks/netokon_bridge*.zip` and unpack it to `packages/flutter_nekoton_bridge/ios/Frameworks/NekotonBridge.xcframework/`. It's a good idea to check this things if something went wrong.

### Android build 🤖

During build scripts copies platform-specific binaries to `packages/flutter_nekoton_bridge/android/netokon_bridge.tar.gz` and unpack it to `packages/flutter_nekoton_bridge/android/src/main/jniLibs/`. It's also a good idea to check this things if something went wrong.

## Tests ✔️

You can run dart, flutter and integration tests: `melos run test:dart`, `melos run test:flutter` or `melos run test:integration`. You can also run all tests at one by running `melos run test`.

You need to run emulator/simulator to complete `melos run test:integration`

### Disabling flaky tests 💩

Yu can disable test or even test group by adding

```dart
skip: skipBecauseFlaky()
```

It detects current OS and skips test depending on FLUTTER_TEST_SKIP_FLAKY_* environment variable that can be set in CI. Currently it supports:

* Android: FLUTTER_TEST_SKIP_FLAKY_ANDROID
* iOS: FLUTTER_TEST_SKIP_FLAKY_IOS

## Code 📊

You can run code analysis: `melos run analyze`. It will analyze all dart code, including subpackages.

## Code format 🗃️

`melos run check-format` will check, `melos run format` will fix dart code formatting.

## Rust code format and analysis 🦀

`melos run check-rust` will ckeck and analyze rust code.

## Prepare to commit 🤝🏻

`melos run check-all` will ckeck, analyze and run all tests. In future this thing will be in git pre-comit hook.

You need to run emulator/simulator to complete this command

## Conventional Commits ❤️

[This magic](https://melos.invertase.dev/guides/automated-releases#versioning) will update version and build our library automatically using commit messages and tags. [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0) is a lightweight convention on top of commit messages.

## Version 🏷️

Package version control is done by melos. It runs by gh action 'create-release' ```melos version -a --yes```.


# HOW to write rust code for nekoton_bridge 🦀
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
4) DO NOT PUT any structures inside `*api.rs` files because it will be copied to `merged.rs` file
and you will see duplicate. Better to put it inside other files of module and import it inside `*api.rs` file.
5) USE local imports starting with `crate`: `crate::nekoton_wrapper::...`
6) If method can throw Error, then it should return `anyhow::Result<T, anyhow::Error>` where T is return type
   and error can be got by calling `handle_error` function.
7) If you have problems with implementing `dyn AnyTrait` of nekoton, then you need to make a hack with
   self-wrapped trait with implemented `UnwindSafe + RefUnwindSafe`, see `UnsignedMessageBoxTrait`


[license_badge]: https://img.shields.io/badge/license-AGPLv3-blue.svg
[license_link]: https://opensource.org/license/agpl-v3/
[pubdev_link]: https://pub.dev/packages/flutter_nekoton_bridge

