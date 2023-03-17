use crate::nekoton_wrapper::external::gql_connection_api::GqlConnectionDartWrapper;
use crate::nekoton_wrapper::transport::{GqlTransportBox, GqlTransportBoxTrait};
use flutter_rust_bridge::frb;
use flutter_rust_bridge::RustOpaque;
pub use nekoton::transport::gql::LatestBlock;

#[frb(mirror(LatestBlock))]
pub struct _LatestBlock {
    pub id: String,
    pub end_lt: u64,
    pub gen_utime: u32,
}

/// Wrapper structure above GqlTransport that provides interface to communicate with it
/// via GqlTransportBoxTrait.
pub struct GqlTransportImpl {
    pub inner_transport: RustOpaque<Box<dyn GqlTransportBoxTrait>>,
}

impl GqlTransportImpl {
    pub fn new(gql_connection: GqlConnectionDartWrapper) -> GqlTransportImpl {
        Self {
            inner_transport: GqlTransportBox::create(
                gql_connection.get_connection().get_connection(),
            ),
        }
    }

    /// Get contract state of address and return json-encoded RawContractState or throw error
    fn get_contract_state(&self, address: String) -> anyhow::Result<String, anyhow::Error> {
        self.inner_transport.get_contract_state(address)
    }

    /// Get full contract state of address and return json-encoded FullContractState or throw error
    fn get_full_contract_state(&self, address: String) -> anyhow::Result<String, anyhow::Error> {
        self.inner_transport.get_full_contract_state(address)
    }

    /// Get list of accounts by code hash. Returns json-encoded AccountsList or throw error
    fn get_accounts_by_code_hash(
        &self,
        code_hash: String,
        limit: u8,
        continuation: Option<String>,
    ) -> anyhow::Result<String, anyhow::Error> {
        self.inner_transport
            .get_accounts_by_code_hash(code_hash, limit, continuation)
    }

    /// Get list of transactions by address.
    /// Return json-encoded TransactionsList or throw error
    fn get_transactions(
        &self,
        address: String,
        from_lt: u64,
        count: u8,
    ) -> anyhow::Result<String, anyhow::Error> {
        self.inner_transport
            .get_transactions(address, from_lt, count)
    }

    /// Get single transaction by its hash.
    /// Return json-encoded Transaction or throw error
    fn get_transaction(&self, hash: String) -> anyhow::Result<Option<String>, anyhow::Error> {
        self.inner_transport.get_transaction(hash)
    }

    /// Get transport signature id and return it or throw error
    fn get_signature_id(&self) -> anyhow::Result<Option<i32>, anyhow::Error> {
        self.inner_transport.get_signature_id()
    }

    /// Get latest block by address and return it or throw error
    fn get_latest_block(&self, address: String) -> Result<LatestBlock, anyhow::Error> {
        self.inner_transport.get_latest_block(address)
    }

    /// Get transport block by id and return base64 encoded block or throw error
    fn get_block(&self, id: String) -> Result<String, anyhow::Error> {
        self.inner_transport.get_block(id)
    }

    /// Wait until next block will come to blockchain and return its id or throw error
    fn wait_for_next_block(
        &self,
        current_block_id: String,
        address: String,
        timeout: u64,
    ) -> Result<String, anyhow::Error> {
        self.inner_transport
            .wait_for_next_block(current_block_id, address, timeout)
    }
}
