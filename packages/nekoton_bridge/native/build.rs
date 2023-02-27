use std::env;
use convert_case::{Case, Casing};
use glob::glob;
use lib_flutter_rust_bridge_codegen::{config_parse, frb_codegen_multi, get_symbols_if_no_duplicates, RawOpts};

fn main() {
    // !!! This generates multiple libs for frb. WORKS
    let mut inputs: Vec<String> = vec![];
    let mut inputs_names: Vec<String> = vec![];

    for entry in glob("./src/**/*api.rs").expect("Failed read api files") {
        match entry {
            Ok(path) => {
                inputs.push(path.display().to_string());
                match path.file_name() {
                    None => {}
                    Some(name) => {
                        inputs_names.push(name.to_string_lossy().to_string());
                    }
                }
            }
            Err(_) => {}
        }
    }

    let dart_outputs: Vec<String> = inputs
        .clone()
        .into_iter()
        .map(|path| path.replace("src", "../lib/src").replace(".rs", ".dart"))
        .collect();

    let rust_outputs: Vec<String> = inputs_names
        .clone()
        .into_iter()
        .map(|name| format!("src/{}", name.replace("api.rs", "generated.rs")))
        .collect();
    let class_names: Vec<String> = inputs_names
        .clone()
        .into_iter()
        .map(|name| {
            name.replace(".rs", "")
                .to_case(Case::Title)
                .replace(" ", "")
        })
        .collect();

    // Options for frb_codegen
    let raw_opts = RawOpts {
        rust_input: inputs,
        dart_output: dart_outputs,
        rust_output: Option::from(rust_outputs),
        class_name: Option::from(class_names),
        inline_rust: true,
        verbose: true,
        wasm: false,
        ..Default::default()
    };


    // Generate Rust & Dart ffi bridges
    let configs = config_parse(raw_opts);
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();
    for config_index in 0..configs.len() {
        frb_codegen_multi(&configs, config_index, &all_symbols).unwrap();
    }

    // Run custom generation for all imports
    _ = std::process::Command::new("dart")
        .arg("run ../bin/build.dart")
        .spawn();

    // Format the generated Dart code
    _ = std::process::Command::new("flutter")
        .arg("format -l 100")
        .arg("..")
        .spawn();
}
