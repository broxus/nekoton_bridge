## 5.1.0

 - **FEAT**: update `nekoton`; add JettonBurnNotification model and integrate with TokenWalletTransaction.

## 5.0.0

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: update flutter >=3.38.0.

## 4.2.0

 - **FEAT**(EWM-600): enhance public key validation and update API response handling.

## 4.1.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.1.0-dev.0

 - **FEAT**: add validateCell function and corresponding tests.

## 4.0.1

 - **FIX**: force package version bump.

## 4.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.0.0-dev.2

 - **FEAT**: add support for libraries in local execution and getter functions.
 - **FEAT**: add `remainingGasTo` parameter to `prepareTransfer` method in `TokenWallet`.
 - **FEAT**: add WalletV5R1 specific methods.

## 4.0.0-dev.1

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: sdk >=3.9.0; flutter >=3.35.0.

## 4.0.0-dev.0

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: remove `reflectable`. ([30e7a3d3](https://github.com/broxus/nekoton_bridge/commit/30e7a3d3885096004327fa1ddb9ee67eb2c298ef))
## 3.6.0

 - **FEAT**: add support for libraries in local execution and getter functions. ([79f1f4c2](https://github.com/broxus/nekoton_bridge/commit/79f1f4c2a26a5e70f21122c5d197c030be974870))

## 3.5.0

 - **FEAT**: add `remainingGasTo` parameter to `prepareTransfer` method in `TokenWallet`. ([744c46d6](https://github.com/broxus/nekoton_bridge/commit/744c46d6fef99bd41472d4498009575d91b59940))

## 3.4.0

 - **FEAT**: add WalletV5R1 specific methods. ([87092647](https://github.com/broxus/nekoton_bridge/commit/87092647cef2f54b3f90aa78c0103a2392bd8768))

## 3.3.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.3.0-dev.2

 - **FEAT**: add LedgerException and handle operation cancellation in LedgerConnection. ([06c188c5](https://github.com/broxus/nekoton_bridge/commit/06c188c540c76104c6118de1712e4cdbdc3d11ba))

## 3.3.0-dev.1

 - **FEAT**: add contract type number retrieval functionality. ([e2646cc2](https://github.com/broxus/nekoton_bridge/commit/e2646cc261b30fc0ba9e51a0149c19c779eadcf4))

## 3.3.0-dev.0

 - **FEAT**: ledger. ([ffc1dcfa](https://github.com/broxus/nekoton_bridge/commit/ffc1dcfa330af97d05a2214ebfbf1ced0ed6fb41))

## 3.2.0

 - **FEAT**: add computeTonWalletAddress func. ([8a9d67a6](https://github.com/broxus/nekoton_bridge/commit/8a9d67a6a60f486aed94fb1a464cfbb19e3610c5))

## 3.1.0

 - **FIX**(EWM-427): implement immutable `refresh_timeout`. ([1c8b1103](https://github.com/broxus/nekoton_bridge/commit/1c8b1103ef76e5617bafcf2b4b190f25eab63e76))
 - **FIX**: update StorageDartWrapper API to use synchronous constructor and adjust related function signatures. ([556ebdc1](https://github.com/broxus/nekoton_bridge/commit/556ebdc138b055f3b460b10c3e8bcfc102e6e444))
 - **FIX**(EWM-496): remove tokio runtime & refactor async rust. ([cc7caeaf](https://github.com/broxus/nekoton_bridge/commit/cc7caeafab1b587c47f805c63b36c7127a882936))
 - **FEAT**: make some abi methods sync. ([b197b80d](https://github.com/broxus/nekoton_bridge/commit/b197b80dd6d29f796de8fd4856b8d4f9ba3822db))
 - **FEAT**(EWM-514): add `run_getter`. ([989b0cf0](https://github.com/broxus/nekoton_bridge/commit/989b0cf0457a624b5667b5caefdea69f1634679f))

## 2.9.0

 - **FEAT**: make some abi methods sync. ([b197b80d](https://github.com/broxus/nekoton_bridge/commit/b197b80dd6d29f796de8fd4856b8d4f9ba3822db))

## 2.8.2

 - **FIX**(EWM-427): implement immutable `refresh_timeout`. ([1c8b1103](https://github.com/broxus/nekoton_bridge/commit/1c8b1103ef76e5617bafcf2b4b190f25eab63e76))

## 2.8.1

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.8.1-dev.1

 - **FIX**: update StorageDartWrapper API to use synchronous constructor and adjust related function signatures. ([556ebdc1](https://github.com/broxus/nekoton_bridge/commit/556ebdc138b055f3b460b10c3e8bcfc102e6e444))

## 2.8.1-dev.0

 - **FIX**(EWM-496): remove tokio runtime & refactor async rust. ([cc7caeaf](https://github.com/broxus/nekoton_bridge/commit/cc7caeafab1b587c47f805c63b36c7127a882936))

## 3.0.0

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: update dependencies. ([4c05f56c](https://github.com/broxus/nekoton_bridge/commit/4c05f56c838b585fcb2f129e63c3ea6d64c486c6))

## 2.8.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.8.0-dev.1

 - **FEAT**: update payload parsing to support jetton transfers. ([1ca7f1f3](https://github.com/broxus/nekoton_bridge/commit/1ca7f1f315ed16b004db40cef3102f37cb9d05f4))

## 2.8.0-dev.0

 - **FEAT**: add encodeComment function ([#346](https://github.com/broxus/nekoton_bridge/issues/346)). ([d4b0e1fd](https://github.com/broxus/nekoton_bridge/commit/d4b0e1fd3fb31f8c24c838f9e7dd1105183326e3))

## 2.7.0

 - **FEAT**(EWM-484): add WalletV3R1 and WalletV3R2 types to wallet models. ([38f0fac9](https://github.com/broxus/nekoton_bridge/commit/38f0fac93eb0834785af02d15f0ef8789c07c352))

## 2.6.0

 - **FIX**: rust format. ([63a2543c](https://github.com/broxus/nekoton_bridge/commit/63a2543c1504aa39ca197be72f0a34b4cb5cd332))
 - **FEAT**: add makeStateInit method to TonWallet and update related tests. ([b099d504](https://github.com/broxus/nekoton_bridge/commit/b099d504040002178f9451afba64d050c95b2e06))

## 2.5.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.5.0-dev.5

 - **FIX**: `MnemonicTypeJsonConverter`. ([aaa261cf](https://github.com/broxus/nekoton_bridge/commit/aaa261cf418e065404ce9c818a6e8c396e6d97d2))

## 2.5.0-dev.4

 - **FEAT**: update nekoton and mnemonic format. ([1460bc24](https://github.com/broxus/nekoton_bridge/commit/1460bc2497464e416e4f22119c278e9bbeca9174))

## 2.5.0-dev.3

 - **REFACTOR**: `FeeFactors` model & `getFeeFactors` methods. ([e9760638](https://github.com/broxus/nekoton_bridge/commit/e976063801f05510515dcd1ae600311fe7418c88))
 - **FEAT**: add TonWalletTransferParams model; update `prepare_transfer` method;. ([a66f1a11](https://github.com/broxus/nekoton_bridge/commit/a66f1a1183370c441291d213cf954021a51c7e4c))

## 2.5.0-dev.2

 - **FIX**: update nekoton & remove gqlConnection parameter from JettonWallet methods. ([71778866](https://github.com/broxus/nekoton_bridge/commit/717788663fce536f1e28603919bec5894a9d965c))
 - **FEAT**: update fee method ([#327](https://github.com/broxus/nekoton_bridge/issues/327)). ([f621674d](https://github.com/broxus/nekoton_bridge/commit/f621674d143ff90442fb971414eef4bf7fe5ceef))

## 2.5.0-dev.1

 - **FEAT**: change async functions to synchronous in mnemonic API. ([e147f7b7](https://github.com/broxus/nekoton_bridge/commit/e147f7b70298f5b1c7aa921b9518d06899485d06))

## 2.5.0-dev.0

 - **FEAT**: implemented moving from u64 to u128 ([#323](https://github.com/broxus/nekoton_bridge/issues/323)). ([c4c3234c](https://github.com/broxus/nekoton_bridge/commit/c4c3234c2a9d09ce5c43fa78af119fa041f15583))

## 2.4.1

 - **FIX**: add address validation and update related methods. ([cbfa998f](https://github.com/broxus/nekoton_bridge/commit/cbfa998fdd4861d25cc995ecb65b03d8b663e7c9))

## 2.4.0

 - **FEAT**: add execution options to estimateFees and update related models ([#317](https://github.com/broxus/nekoton_bridge/issues/317)). ([48106400](https://github.com/broxus/nekoton_bridge/commit/48106400aa4929d1c48e7f60dd20e00659114db2))

## 2.3.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.3.0-dev.4

 - **FIX**(ios): rename nekoton_bridge to flutter_nekoton_bridge. ([c30e409f](https://github.com/broxus/nekoton_bridge/commit/c30e409ff982cce2a0c2025061a6489ee78271af))

## 2.3.0-dev.3

 - **FIX**: update dependencies. ([f592261b](https://github.com/broxus/nekoton_bridge/commit/f592261b392387b9166036649bf02a39bcb214db))

## 2.3.0-dev.2

 - **FIX**: restrict `money2` version to avoid json serialization issues. ([3ac64f36](https://github.com/broxus/nekoton_bridge/commit/3ac64f3636078f53b42c6f54c2d5443e3b951aa5))
 - **FEAT**: update `flutter_rust_bridge` ([#297](https://github.com/broxus/nekoton_bridge/issues/297)). ([f5803e51](https://github.com/broxus/nekoton_bridge/commit/f5803e51d85cb423a8563ce02ebd35c6a92ca4b1))
 - **FEAT**: enhance Address model with new methods and integration tests. ([9e2bf7e7](https://github.com/broxus/nekoton_bridge/commit/9e2bf7e7ca55b141c6563e11c9e9a6a5f6e66d7c))
 - **FEAT**: update `flutter_rust_bridge`. ([017a2403](https://github.com/broxus/nekoton_bridge/commit/017a2403d247c1eab81a7af3f34ccf04dcf3a22b))

## 2.3.0-dev.1

 - **FEAT**: enhance Address model with new methods and integration tests. ([9e2bf7e7](https://github.com/broxus/nekoton_bridge/commit/9e2bf7e7ca55b141c6563e11c9e9a6a5f6e66d7c))

## 2.3.0-dev.0

 - **FEAT**: update `flutter_rust_bridge`. ([017a2403](https://github.com/broxus/nekoton_bridge/commit/017a2403d247c1eab81a7af3f34ccf04dcf3a22b))

## 2.2.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.2.0-dev.0

 - **FEAT**: update `nekoton`. ([56addc96](https://github.com/broxus/nekoton_bridge/commit/56addc96b5690f8d81fd4e5ff97bd2dc83df05f9))

## 2.1.0

 - **FEAT**: update `nekoton`, add jetton `update_library_cell` support;. ([69576615](https://github.com/broxus/nekoton_bridge/commit/695766159ca82faf1c255755e48bfdbd949f6798))

## 2.0.2

 - **FIX**: specify nekoton rev. ([9a60c737](https://github.com/broxus/nekoton_bridge/commit/9a60c737f5d9fd67c0787419eced008f9695d86d))

## 2.0.1

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.0.1-dev.10

 - **FEAT**: token wallet preload transactions ([#286](https://github.com/broxus/nekoton_bridge/issues/286)). ([ff55c7a8](https://github.com/broxus/nekoton_bridge/commit/ff55c7a84d9b5e19ec2f137d26b81ba94ed721d6))

## 2.0.1-dev.9

 - **FEAT**: add ton wallet callbacks (`on_details_changed`, `on_custodians_changed`, `on_unconfirmed_transactions_changed`). ([3b146cd4](https://github.com/broxus/nekoton_bridge/commit/3b146cd4fef3f524e0c1c5f518a32444eff1e3f3))

## 2.0.1-dev.8

 - **FIX**: rust-format. ([383d26d7](https://github.com/broxus/nekoton_bridge/commit/383d26d7ce88aee825fda8bbb6b8e434cab7b054))

## 2.0.1-dev.7

 - **FEAT**: add `pack_address`. ([47cf1763](https://github.com/broxus/nekoton_bridge/commit/47cf176373028c08dd24a51632d829d6987a0b5b))

## 2.0.1-dev.6

 - **FEAT**: add jetton wallet support ([#276](https://github.com/broxus/nekoton_bridge/issues/276)). ([6120e3c6](https://github.com/broxus/nekoton_bridge/commit/6120e3c638214a5271aa9a901beccd48fe910ff4))

## 2.0.1-dev.5

 - **FIX**: downgrade `money2` package. ([c5a70412](https://github.com/broxus/nekoton_bridge/commit/c5a7041219809b71b266620fbb3fd9279b309e2e))

## 2.0.1-dev.4

 - **FEAT**: add expiration time to multisig ([#267](https://github.com/broxus/nekoton_bridge/issues/267)). ([3cbf41ce](https://github.com/broxus/nekoton_bridge/commit/3cbf41ce902197784a9f20115965f46e76372317))

## 2.0.1-dev.2

 - **FIX**: force `nekoton_bridge` version bump. ([8bb103d4](https://github.com/broxus/nekoton_bridge/commit/8bb103d42fc76c7d40138ba0cfede899a6165255))

## 2.0.1-dev.0

 - **REFACTOR**: use struct to parse json string. ([35999f74](https://github.com/broxus/nekoton_bridge/commit/35999f74c5613f9888b523f6e94a2658a8a32fb6))
 - **FIX**: Transaction json parse. ([b1977e8e](https://github.com/broxus/nekoton_bridge/commit/b1977e8ef950206f4da5db57cc3ad49f43b1bd50))

## 2.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.0.0-dev.1

Using money2_improver from git and money2: 5.2.1

## 1.20.0-dev.5

 - **FIX**: `estimate_min_attached_amount` payload fix. ([3c53957e](https://github.com/broxus/nekoton_bridge/commit/3c53957ef0c86ffa487d995142d5a4499bb33acc))

## 1.20.0-dev.4

 - **FIX**: rust format. ([2bb48093](https://github.com/broxus/nekoton_bridge/commit/2bb48093775e1a54e50e87a504a7442d2c1bba38))
 - **FEAT**: add `simulateTransactionTree` method. ([2df468c3](https://github.com/broxus/nekoton_bridge/commit/2df468c350e1bf336ed87cce69121c38655c85f6))

## 1.20.0-dev.3

 - **FIX**: update nekoton. ([bfc8837d](https://github.com/broxus/nekoton_bridge/commit/bfc8837d4fc94e8a8247341c4a8fbc8cfe1c1727))

## 1.20.0-dev.2

 - **FEAT**: `estimate_min_attached_amount` method ([#250](https://github.com/broxus/nekoton_bridge/issues/250)). ([f2b75c60](https://github.com/broxus/nekoton_bridge/commit/f2b75c6030a4d6e42b8f328ea2e2fbb112647dda))

## 1.20.0-dev.1

 - **FEAT**: add `token_root_details` method ([#248](https://github.com/broxus/nekoton_bridge/issues/248)). ([b8d962b6](https://github.com/broxus/nekoton_bridge/commit/b8d962b68ecca51c50b906613ddad29132a4dcf5))

## 1.20.0-dev.0

 - **FEAT**: add compute_storage_fee ([#245](https://github.com/broxus/nekoton_bridge/issues/245)). ([02e762a8](https://github.com/broxus/nekoton_bridge/commit/02e762a8ca2595e98056a4dae65c97cf07569df0))

## 1.19.1

 - **FIX**: abi methods ([#241](https://github.com/broxus/nekoton_bridge/issues/241)). ([d3f908aa](https://github.com/broxus/nekoton_bridge/commit/d3f908aada544a80b26d68a948eb349cc2591fc9))

## 1.19.0

 - **FEAT**: add stacktrace to LogEntry ([#236](https://github.com/broxus/nekoton_bridge/issues/236)). ([50a639eb](https://github.com/broxus/nekoton_bridge/commit/50a639eb385edf49c03d3249f8858fd2daff9983))

## 1.18.1

 - **FIX**: add codeHash to contract ([#234](https://github.com/broxus/nekoton_bridge/issues/234)). ([911aec9c](https://github.com/broxus/nekoton_bridge/commit/911aec9c87c07f43a1ec597f437c87b7132168e8))

## 1.18.0

 - **FIX**: generated files ([#229](https://github.com/broxus/nekoton_bridge/issues/229)). ([ed63cac4](https://github.com/broxus/nekoton_bridge/commit/ed63cac4c5b2382f0b6fa34e120ae5066f08732b))
 - **FEAT**: added method to add multiple token wallets at timme ([#231](https://github.com/broxus/nekoton_bridge/issues/231)). ([f88c0da3](https://github.com/broxus/nekoton_bridge/commit/f88c0da3ed357316b1bd66dec49b985b92fe29d2))

## 1.17.0

 - **FEAT**: add clock offset ([#222](https://github.com/broxus/nekoton_bridge/issues/222)). ([a8457b6d](https://github.com/broxus/nekoton_bridge/commit/a8457b6df60ed21305efde135566326567d83ea6))
 - **FEAT**: empty ([#217](https://github.com/broxus/nekoton_bridge/issues/217)). ([80c18cb1](https://github.com/broxus/nekoton_bridge/commit/80c18cb15753b874f9329364507ed9e0c6f80676))
 - **FEAT**: empty thing just to satisfy melos version. ([6457f342](https://github.com/broxus/nekoton_bridge/commit/6457f342129728a00b78465aef6409d8fce09e71))

## 1.16.0

 - **FEAT**: add clock offset ([#222](https://github.com/broxus/nekoton_bridge/issues/222)). ([a8457b6d](https://github.com/broxus/nekoton_bridge/commit/a8457b6df60ed21305efde135566326567d83ea6))
 - **FEAT**: empty ([#217](https://github.com/broxus/nekoton_bridge/issues/217)). ([80c18cb1](https://github.com/broxus/nekoton_bridge/commit/80c18cb15753b874f9329364507ed9e0c6f80676))

## 1.15.1

 - **FIX**: fix flutter_rust_bridge version to exact ([#210](https://github.com/broxus/nekoton_bridge/issues/210)). ([43ec5715](https://github.com/broxus/nekoton_bridge/commit/43ec57151230e7c6db7de49b67a16336352fee5d))

## 1.15.0

 - **FEAT**: revert JRPC ([#206](https://github.com/broxus/nekoton_bridge/issues/206)). ([6b0f2941](https://github.com/broxus/nekoton_bridge/commit/6b0f2941874ac47103b4783cc86249a80e6f363b))

## 1.14.0

 - **FEAT**: implement more abi methods ([#204](https://github.com/broxus/nekoton_bridge/issues/204)). ([b0d957c4](https://github.com/broxus/nekoton_bridge/commit/b0d957c4411bc3527db24f577242da000132a32d))

## 1.13.0

 - **FEAT**: implement missed methods ([#202](https://github.com/broxus/nekoton_bridge/issues/202)). ([2bb7f4c4](https://github.com/broxus/nekoton_bridge/commit/2bb7f4c41f41838a255e29aee46189a8be72692e))

## 1.12.0

 - **FIX**: another dummy. ([a002a1da](https://github.com/broxus/nekoton_bridge/commit/a002a1dae4180bb1aeddfe848cbe99098d6afe6e))
 - **FEAT**: update nekoton add proto transport ([#198](https://github.com/broxus/nekoton_bridge/issues/198)). ([edf97c3a](https://github.com/broxus/nekoton_bridge/commit/edf97c3a9d92a664a64c21057fa0b02361bfe847))
 - **FEAT**: nope (empty commit for melos) ([#194](https://github.com/broxus/nekoton_bridge/issues/194)). ([b50dbf49](https://github.com/broxus/nekoton_bridge/commit/b50dbf491167cd8c51d27aff7767c42bb68e4132))

## 1.11.1

 - **FIX**: another dummy. ([a002a1da](https://github.com/broxus/nekoton_bridge/commit/a002a1dae4180bb1aeddfe848cbe99098d6afe6e))

## 1.11.0

 - **FEAT**: add providing FfiException above ([#188](https://github.com/broxus/nekoton_bridge/issues/188)). ([3bee1665](https://github.com/broxus/nekoton_bridge/commit/3bee16658bd5c5ca11b82ae7a322c4530c2282f8))

## 1.10.0

 - **FEAT**: allow mocking bridge ([#172](https://github.com/broxus/nekoton_bridge/issues/172)). ([694cae99](https://github.com/broxus/nekoton_bridge/commit/694cae99342888c996d9e896dbc2f93d8c641e90))

## 1.9.0

 - **FEAT**: add Currency and Money to TokenWallet ([#162](https://github.com/broxus/nekoton_bridge/issues/162)). ([4b13f6bc](https://github.com/broxus/nekoton_bridge/commit/4b13f6bc10f3e41882a1ed19f69df93f3f28dfa0))

## 1.8.4

 - **FIX**: transport timeout ([#158](https://github.com/broxus/nekoton_bridge/issues/158)). ([c90981ca](https://github.com/broxus/nekoton_bridge/commit/c90981ca4ce9a5ac507290ef0c54d08cf3ff081c))

## 1.8.3

 - **FIX**: sealed freezed ([#156](https://github.com/broxus/nekoton_bridge/issues/156)). ([2a37d2d0](https://github.com/broxus/nekoton_bridge/commit/2a37d2d053b0e1114ffd2f1873f0028a3a92ad09))

## 1.8.2

 - **FIX**: nekoton_block venom feature ([#152](https://github.com/broxus/nekoton_bridge/issues/152)). ([c0001495](https://github.com/broxus/nekoton_bridge/commit/c00014955458db47a5bd2dc9345e3a91219ebec7))

## 1.8.1

 - **FIX**: base64 string encoding ([#149](https://github.com/broxus/nekoton_bridge/issues/149)). ([d823283c](https://github.com/broxus/nekoton_bridge/commit/d823283c26dfd61229f2f3bf847af95a0dce104e))

## 1.8.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.8.0-dev.11

 - **FEAT**: restart rust runtime, update nekoton, fix formatter ([#130](https://github.com/broxus/nekoton_bridge/issues/130)). ([972b5def](https://github.com/broxus/nekoton_bridge/commit/972b5def0fd74894ae9661bc10b568e275abb9bf))

## 1.8.0-dev.10

 - **FIX**: fix calls after dispose. Fix getting FullContractState ([#132](https://github.com/broxus/nekoton_bridge/issues/132)). ([f8898091](https://github.com/broxus/nekoton_bridge/commit/f88980917a18aae808a951be5c264ff92a83a290))

## 1.8.0-dev.9

 - **REFACTOR**: versioning create PR ([#118](https://github.com/broxus/nekoton_bridge/issues/118)). ([0e605265](https://github.com/broxus/nekoton_bridge/commit/0e605265d9f3abe946df5d39f5ad5cf0a2aeca76))

## 1.8.0-dev.8

 - **REFACTOR**: flutter dart upgrade ([#114](https://github.com/broxus/nekoton_bridge/issues/114)). ([5e1d9308](https://github.com/broxus/nekoton_bridge/commit/5e1d93083db6565fe9b19c06a354efd3ba6db706))
 - **FIX**: money2 version up ([#97](https://github.com/broxus/nekoton_bridge/issues/97)). ([75b6deca](https://github.com/broxus/nekoton_bridge/commit/75b6decad43af0a06de639ed0c734d243699669b))

## 1.8.0-dev.7

 - **FIX**: caller parallelelism ([#105](https://github.com/broxus/nekoton_bridge/issues/105)). ([6892cca0](https://github.com/broxus/nekoton_bridge/commit/6892cca0af429d4bfad3ae6b03a9d8f89044931b))

## 1.8.0-dev.6

 - **FIX**: update frb ([#89](https://github.com/broxus/nekoton_bridge/issues/89)). ([e42f9297](https://github.com/broxus/nekoton_bridge/commit/e42f92971cce2f36c472af22a67c089b475027e3))

## 1.8.0-dev.5

 - **FIX**: melos config ([#86](https://github.com/broxus/nekoton_bridge/issues/86)). ([2ec0c464](https://github.com/broxus/nekoton_bridge/commit/2ec0c4647746be298c84b362fdaf73353133008f))
 - **FIX**: update melos configuration. ([a05b0aa9](https://github.com/broxus/nekoton_bridge/commit/a05b0aa908483cc0c684d9d94fe0260d30283c87))
 - **FEAT**: add generated files to git ([#88](https://github.com/broxus/nekoton_bridge/issues/88)). ([ef54b95a](https://github.com/broxus/nekoton_bridge/commit/ef54b95a6d763577e420af3cd7ccc8fa2d81670d))

## 1.8.0-dev.4

 - **FIX**: update melos configuration. ([a05b0aa9](https://github.com/broxus/nekoton_bridge/commit/a05b0aa908483cc0c684d9d94fe0260d30283c87))

## 1.8.0-dev.3

 - **FIX**: upgrade js packages ([#75](https://github.com/broxus/nekoton_bridge/issues/75)). ([76a8c91b](https://github.com/broxus/nekoton_bridge/commit/76a8c91b0317e7f815a4611e71a0d8b54a9247cc))
 - **FIX**: change packages version. ([ab1f7ff1](https://github.com/broxus/nekoton_bridge/commit/ab1f7ff13e7e874b1a8dcf7172464a76e843e246))

## 1.8.0-dev.2

 - **FIX**: change packages version. ([ab1f7ff1](https://github.com/broxus/nekoton_bridge/commit/ab1f7ff13e7e874b1a8dcf7172464a76e843e246))

## 1.6.0-dev.1

 - **FIX**: upgrade rust libs, fix pre-bs script ([#68](https://github.com/broxus/nekoton_bridge/issues/68)). ([a046c994](https://github.com/broxus/nekoton_bridge/commit/a046c9942f6a9821f3e2d20d4012f4e5dcf49566))
 - **FIX**: downgrade frb version temporary ([#58](https://github.com/broxus/nekoton_bridge/issues/58)). ([89e898b9](https://github.com/broxus/nekoton_bridge/commit/89e898b9e4acc07d35be4ef296e9e0baeb572f82))
 - **FIX**: new liccpy warnings. ([314ce49c](https://github.com/broxus/nekoton_bridge/commit/314ce49c1604507326ccf72cb839c98ba14f5781))
 - **FEAT**: add get_network_id to nekoton. Expand github integration test time ([#66](https://github.com/broxus/nekoton_bridge/issues/66)). ([4f524d0b](https://github.com/broxus/nekoton_bridge/commit/4f524d0b09962faf395769722c9d393c1a71398f))
 - **FEAT**: upgrade libs ([#49](https://github.com/broxus/nekoton_bridge/issues/49)). ([a3c3a611](https://github.com/broxus/nekoton_bridge/commit/a3c3a611ef056a9ccb9c12d7d36b7125aeb81635))
 - **FEAT**: macos build ([#43](https://github.com/broxus/nekoton_bridge/issues/43)). ([20911438](https://github.com/broxus/nekoton_bridge/commit/20911438421747a3f01add0b02e599b14cbe3068))
 - **FEAT**: caller tests ([#23](https://github.com/broxus/nekoton_bridge/issues/23)). ([4c19a66b](https://github.com/broxus/nekoton_bridge/commit/4c19a66b6fd7637a1059fd68010157531a5c487c))
 - **FEAT**: add logger test ([#22](https://github.com/broxus/nekoton_bridge/issues/22)). ([a84aac4d](https://github.com/broxus/nekoton_bridge/commit/a84aac4dea958e197567747326cb12f62bc8c2dd))
 - **FEAT**: upgrade flutter_rust_bridge, remove useless example, change dependabot interval ([#19](https://github.com/broxus/nekoton_bridge/issues/19)). ([3febd4a9](https://github.com/broxus/nekoton_bridge/commit/3febd4a9a731e2a65f5d2f8965e18e6146d43da6))
 - **FEAT**: melos upgrade ([#18](https://github.com/broxus/nekoton_bridge/issues/18)). ([114b5910](https://github.com/broxus/nekoton_bridge/commit/114b591083670f714ea03050eb14e84a572cd729))

## 1.6.0-dev.0

 - **FIX**: new liccpy warnings. ([314ce49c](https://github.com/broxus/nekoton_bridge/commit/314ce49c1604507326ccf72cb839c98ba14f5781))
 - **FIX**: use max workers in frb ([#16](https://github.com/broxus/nekoton_bridge/issues/16)). ([f98c06d3](https://github.com/broxus/nekoton_bridge/commit/f98c06d3d4319181f2057cd54ccd98d8edee5669))
 - **FIX**: nekoton_bridge should depend on build_runner ([#6](https://github.com/broxus/nekoton_bridge/issues/6)). ([25b73220](https://github.com/broxus/nekoton_bridge/commit/25b7322053c688d98a724bb3d8e1652cdd184357))
 - **FEAT**: upgrade money2_improver ([#14](https://github.com/broxus/nekoton_bridge/issues/14)). ([57fb53be](https://github.com/broxus/nekoton_bridge/commit/57fb53be9e763a14574b4b602ad097e94122ff24))
 - **FEAT**: add money2 and money2_improver ([#13](https://github.com/broxus/nekoton_bridge/issues/13)). ([2de93295](https://github.com/broxus/nekoton_bridge/commit/2de9329585ad68f437a367d9b5e789f8220a3625))
 - **FEAT**: add dart caller return value ([#12](https://github.com/broxus/nekoton_bridge/issues/12)). ([872ca097](https://github.com/broxus/nekoton_bridge/commit/872ca09747c48b0ffc67000391f77496ea19350f))
 - **FEAT**: Attempt generate from multiple files ([#8](https://github.com/broxus/nekoton_bridge/issues/8)). ([26440721](https://github.com/broxus/nekoton_bridge/commit/2644072163afaa2f6c113770115b5d8df0a607e9))
 - **FEAT**: flutter_rust_bridge upgrade ([#4](https://github.com/broxus/nekoton_bridge/issues/4)). ([51cdd22b](https://github.com/broxus/nekoton_bridge/commit/51cdd22ba712a0c31b80683e68c2b5eb946e8853))
 - **FEAT**: add nekoton dependency. ([c132ab60](https://github.com/broxus/nekoton_bridge/commit/c132ab604bdc8be465a09e3c6526b4dc8f084c15))

## 1.5.2

 - **FIX**: flutter_rust_bridge version up.

## 1.5.1

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.5.1-dev.0

 - **FIX**: version up.

## 1.5.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.5.0-dev.2

 - **FEAT**: add precise log control.

## 1.5.0-dev.1

 - **FEAT**: change log level to enum.

## 1.5.0-dev.0

 - **FEAT**: version upgrade.

## 1.4.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.4.0-dev.2

 - **FEAT**: another upgrade.

## 1.4.0-dev.1

 - **FEAT**: version upgrade.
 - **FEAT**: another version upgrade.

## 1.4.0-dev.0

 - **FEAT**: trigger version.

## 1.3.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.3.0-dev.1

 - **FIX**: exports.

## 1.3.0-dev.0

 - **FEAT**: trigger version.

## 1.2.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.2.0-dev.0

 - **FIX**: android build.
 - **FEAT**: add logger.

## 1.1.1

 - **FIX**: downgrade flutter_rust_bridge.

## 1.1.0

 - **FEAT**: upgrade flutter_rust_bridge_codegen.
 - **FEAT**: upgrade flutter_rust_bridge.

## 1.0.4

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.0.4-dev.0

 - **FIX**: add dependency_overrides.

## 1.0.3

 - **FIX**: change version.

## 1.0.0

- Initial version.
