use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};
use rerun_except::rerun_except;
use std::path::PathBuf;

const DART_OUTPUT: &str = "../lib/src/bridge_generated.dart";
const IOS_C_OUTPUT: &str = "../../flutter_nekoton_bridge/ios/Classes/frb.h";
// const MACOS_C_OUTPUT: &str = "../../flutter_nekoton_bridge/macos/Classes/frb.h";

fn main() {
    let manifest_dir = PathBuf::from(std::env::var("CARGO_MANIFEST_DIR").unwrap());

    let rust_input = manifest_dir
        .join("src/merged.rs")
        .to_str()
        .unwrap()
        .to_string();
    let dart_output = manifest_dir.join(DART_OUTPUT).to_str().unwrap().to_string();
    let ios_c_output = manifest_dir
        .join(IOS_C_OUTPUT)
        .to_str()
        .unwrap()
        .to_string();

    // Tell Cargo that if the input Rust code changes, rerun this build script
    rerun_except(&["**/*_api.rs"]).unwrap();

    // Create merged file for generation
    let mut codegen = std::process::Command::new("dart")
        .arg("run")
        .arg("../bin/merger.dart")
        .spawn()
        .expect("Failed to spawn child");

    let res = codegen.wait().expect("Failed to wait on child");
    if !res.success() {
        eprintln!("Failed to merge files");
        eprintln!("Exit code: {}", res.code().unwrap_or(-1));
        eprintln!(
            "Stdout: {}",
            std::io::read_to_string(codegen.stdout.unwrap()).unwrap()
        );
        eprintln!(
            "Stderr: {}",
            std::io::read_to_string(codegen.stderr.unwrap()).unwrap()
        );
    }

    let raw_opts = RawOpts {
        rust_input: vec![rust_input],
        dart_output: vec![dart_output],
        c_output: Some(vec![ios_c_output]),
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
        frb_codegen(config, &all_symbols).expect("Frb codegen failed");
    }

    // Format the generated Dart code
    let mut formatter = std::process::Command::new("flutter")
        .arg("format")
        .arg("../lib")
        .spawn()
        .expect("Failed to spawn child");

    let res = formatter.wait().expect("Failed to wait on child");
    if !res.success() {
        eprintln!("Failed to format generated code");
        eprintln!("Exit code: {}", res.code().unwrap_or(-1));
        eprintln!(
            "Stdout: {}",
            std::io::read_to_string(formatter.stdout.unwrap()).unwrap()
        );
        eprintln!(
            "Stderr: {}",
            std::io::read_to_string(formatter.stderr.unwrap()).unwrap()
        );
    }
}
