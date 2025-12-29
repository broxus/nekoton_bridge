use crate::frb_generated::RustOpaque;
use crate::nekoton_wrapper::helpers::parse_cell;
use anyhow::anyhow;
use flutter_rust_bridge::frb;
pub use ton_block::ConfigParams;
use ton_types::SliceData;

/// Thin wrapper around `ConfigParams` for Dart access via flutter_rust_bridge.
pub struct BlockchainConfigParams {
    pub inner: RustOpaque<ConfigParams>,
}

impl BlockchainConfigParams {
    /// Construct wrapper from base64-encoded config params root cell.
    #[frb(sync)]
    pub fn new(params_root: String) -> anyhow::Result<Self> {
        let params_root = parse_cell(params_root)?;

        Ok(Self {
            inner: RustOpaque::new(ConfigParams::with_root(params_root)),
        })
    }

    #[frb(sync)]
    pub fn fundamental_smc_addr(&self) -> anyhow::Result<Vec<String>> {
        let mut result = Vec::new();

        self.inner
            .fundamental_smc_addr()?
            // Addresses are stored as dictionary keys; values are empty. Use keys.
            .iterate_slices_with_keys(|key_slice, _| {
                result.push(parse_fundamental_smc_address(key_slice)?);
                Ok(true)
            })?;

        Ok(result)
    }
}
fn parse_fundamental_smc_address(mut slice: SliceData) -> anyhow::Result<String> {
    let bytes = slice
        .get_next_bytes(32)
        .map_err(|_| anyhow!("Invalid address data"))?;
    let hex = hex::encode(bytes);

    // Stored format omits workchain; normalize to masterchain-prefixed hex.
    Ok(format!("-1:{hex}"))
}
