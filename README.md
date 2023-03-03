# Nekoton bridge for flutter

This package based on [flutter_rust_bridge](https://cjycode.com/flutter_rust_bridge) generator.

## Getting Started 🚀

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

## Melos magic 	🪄

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
melos run build:apple
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

## Code analysis

You can run code analysis: `melos run analyze`. It will analyze all dart code, including subpackages.

## Code format

`melos run check-format` will check, `melos run format` will fix dart code formatting.

## Rust code format and analysis

`melos run check-rust` will ckeck and analyze rust code.

## Prepare to commit

`melos run check-all` will ckeck, analyze and run all tests. In future this thing will be in git pre-comit hook.

You need to run emulator/simulator to complete this command

## Conventional Commits ❤️

[This magic](https://melos.invertase.dev/guides/automated-releases#versioning) will update version and build our library automatically using commit messages and tags. [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0) is a lightweight convention on top of commit messages.

## Version

At this time melos updates version for nekoton_bridge automatically, links it to flutter_nekoton_bridge (changes 'ref'), but don't update flutter_nekoton_bridge version itself. I don't know what to do with it, so we should fix it manually.


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
4) DO NOT PUT any structures inside `*api.rs` files because it will be copied to `merged.rs` file
and you will see duplicate. Better to put it inside other files of module and import it inside `*api.rs` file.
5) USE local imports starting with `crate`: `crate::nekoton_wrapper::...`
