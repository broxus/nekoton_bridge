use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};
use rerun_except::rerun_except;
use std::env;
use std::fs;

const RUST_INPUT: &str = "src/merged.rs";
const DART_OUTPUT: &str = "../lib/src/bridge_generated.dart";
const IOS_C_OUTPUT: &str = "../../flutter_nekoton_bridge/ios/Classes/frb.h";
const MACOS_C_OUTPUT: &str = "../../flutter_nekoton_bridge/macos/Classes/frb.h";

fn main() {
    env::set_var("RUST_BACKTRACE", "full");
    // To debug frb uncomment here and in Cargo.toml
    // env::set_var("RUST_LOG", "debug");
    // env_logger::init();

    // Tell Cargo that if the input Rust code changes, rerun this build script
    rerun_except(&["**/*_api.rs"]).unwrap();

    // Create merged file for generation
    let mut codegen = std::process::Command::new("dart")
        .arg("run")
        .arg("../bin/merger.dart")
        .spawn()
        .unwrap();
    _ = codegen.wait();

    let raw_opts = RawOpts {
        rust_input: vec![RUST_INPUT.to_string()],
        dart_output: vec![DART_OUTPUT.to_string()],
        c_output: Some(vec![IOS_C_OUTPUT.to_string()]),
        // TODO: add output for macOS
        // c_output: Some(vec![IOS_C_OUTPUT.to_string(), MACOS_C_OUTPUT.to_string()]),
        inline_rust: true,
        wasm: true,
        ..Default::default()
    };

    // Generate Rust & Dart ffi bridges
    let configs = config_parse(raw_opts);
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();
    for config in configs.iter() {
        frb_codegen(config, &all_symbols).unwrap();
    }

    fs::copy(IOS_C_OUTPUT, MACOS_C_OUTPUT).expect("Can't copy frb.h from ios to macos build dir");

    // Format the generated Dart code
    std::process::Command::new("dart")
        .arg("format")
        .arg("../lib")
        .spawn()
        .unwrap()
        .wait()
        .unwrap();
}
