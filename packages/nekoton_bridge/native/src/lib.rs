// You don't need to delete imports of generated files if file is absent on disk
// `cargo build` ignore it and completes build.rs script as usual
mod bridge_generated; /* AUTO INJECTED BY flutter_rust_bridge. This line may not be accurate, and you can change it according to your needs. */
mod nekoton_wrapper;
mod utils;
// THIS IMPORT MUST STAY AT LAST PLACE or frb_codegen won't see its structure correctly and will try
// to include imports from other crates.
mod merged;
