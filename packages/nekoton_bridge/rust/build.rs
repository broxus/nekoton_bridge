use lib_flutter_rust_bridge_codegen::codegen;
use lib_flutter_rust_bridge_codegen::codegen::Config;
use rerun_except::rerun_except;
use std::env;

fn main() -> anyhow::Result<()> {
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


    codegen::generate(
        Config::from_config_file("../flutter_rust_bridge.yaml")?.unwrap(),
        Default::default(),
    )
}
