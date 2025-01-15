## 2.3.0-dev.0

 - **FEAT**: update `flutter_rust_bridge`. ([017a2403](https://github.com/broxus/nekoton_bridge/commit/017a2403d247c1eab81a7af3f34ccf04dcf3a22b))

## 2.2.3

 - **FIX**: force version bump. ([945da3ee](https://github.com/broxus/nekoton_bridge/commit/945da3eedf79480f890fdf645f296b54dc36c72a))

## 2.2.1

 - **FIX**: check if contract was disposed. ([18828705](https://github.com/broxus/nekoton_bridge/commit/18828705bae9d83d34fd8e6dccf01b1bd84c663c))

## 2.2.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.2.0-dev.0

 - **FEAT**: update `nekoton`. ([56addc96](https://github.com/broxus/nekoton_bridge/commit/56addc96b5690f8d81fd4e5ff97bd2dc83df05f9))

## 2.1.0

 - **FEAT**: update `nekoton`, add jetton `update_library_cell` support;. ([69576615](https://github.com/broxus/nekoton_bridge/commit/695766159ca82faf1c255755e48bfdbd949f6798))

## 2.0.2

 - Update a dependency to the latest release.

## 2.0.1

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.0.1-dev.14

 - **FEAT**: token wallet preload transactions ([#286](https://github.com/broxus/nekoton_bridge/issues/286)). ([ff55c7a8](https://github.com/broxus/nekoton_bridge/commit/ff55c7a84d9b5e19ec2f137d26b81ba94ed721d6))

## 2.0.1-dev.13

 - **FEAT**: add ton wallet callbacks (`on_details_changed`, `on_custodians_changed`, `on_unconfirmed_transactions_changed`). ([3b146cd4](https://github.com/broxus/nekoton_bridge/commit/3b146cd4fef3f524e0c1c5f518a32444eff1e3f3))

## 2.0.1-dev.12

 - **FIX**: add `ton_wallet_transfer` wallet interaction method. ([7eeb6e02](https://github.com/broxus/nekoton_bridge/commit/7eeb6e024b55a206adacaa1bc156614477b615da))

## 2.0.1-dev.11

 - **FIX**: ton `KnownPayload` support. ([e8628199](https://github.com/broxus/nekoton_bridge/commit/e8628199a642edc9477a93b3844a935846550b49))

## 2.0.1-dev.10

 - **FIX**: `JettonIncomingTransfer` field fix; add TON wallet types;. ([49a64af7](https://github.com/broxus/nekoton_bridge/commit/49a64af76be1550bf6b717adfab2bc2dc87fab92))
 - **FEAT**: add `pack_address`. ([47cf1763](https://github.com/broxus/nekoton_bridge/commit/47cf176373028c08dd24a51632d829d6987a0b5b))

## 2.0.1-dev.9

> Note: This release has breaking changes.

 - **FEAT**: combine token & jetton transaction models. ([d22f1c48](https://github.com/broxus/nekoton_bridge/commit/d22f1c4886932666d8128fb6d9bb501f907434fd))
 - **BREAKING** **REFACTOR**: remove `tuple`. ([11d9efed](https://github.com/broxus/nekoton_bridge/commit/11d9efed69398b72beba14fedaa00213d82da7bc))

## 2.0.1-dev.8

 - **FEAT**: add jetton wallet support ([#276](https://github.com/broxus/nekoton_bridge/issues/276)). ([6120e3c6](https://github.com/broxus/nekoton_bridge/commit/6120e3c638214a5271aa9a901beccd48fe910ff4))

## 2.0.1-dev.7

 - **FEAT**: transport http client. ([67411462](https://github.com/broxus/nekoton_bridge/commit/67411462831486246d6e597f1d2af6d810632117))

## 2.0.1-dev.6

 - **FIX**: downgrade `money2` package. ([c5a70412](https://github.com/broxus/nekoton_bridge/commit/c5a7041219809b71b266620fbb3fd9279b309e2e))
 - **FIX**: tests. ([04e17cc7](https://github.com/broxus/nekoton_bridge/commit/04e17cc763e29d6929292c202c7e2a6d016b7d5f))

## 2.0.1-dev.5

 - **FEAT**: use transport mutex in ton/token wallets. ([5eaa8283](https://github.com/broxus/nekoton_bridge/commit/5eaa8283d8d657c12101cf507b8713519e5d75f0))
 - **FEAT**: add transport mutex. ([0eaf93a2](https://github.com/broxus/nekoton_bridge/commit/0eaf93a28a5665018324a177151bc0da1da17c6a))

## 2.0.1-dev.4

 - **FEAT**: add expiration time to multisig ([#267](https://github.com/broxus/nekoton_bridge/issues/267)). ([3cbf41ce](https://github.com/broxus/nekoton_bridge/commit/3cbf41ce902197784a9f20115965f46e76372317))

## 2.0.1-dev.2

 - **FIX**: force `nekoton_bridge` version bump. ([8bb103d4](https://github.com/broxus/nekoton_bridge/commit/8bb103d42fc76c7d40138ba0cfede899a6165255))

## 2.0.1-dev.1

 - **FIX**: Transaction json parse. ([b1977e8e](https://github.com/broxus/nekoton_bridge/commit/b1977e8ef950206f4da5db57cc3ad49f43b1bd50))
 - **FIX**: android build. ([a68fe9b9](https://github.com/broxus/nekoton_bridge/commit/a68fe9b90e91a65109df7919cb3fb1f0523cbbaa))

## 2.0.1-dev.0

 - **FIX**: pubspec.yaml. ([69d3f686](https://github.com/broxus/nekoton_bridge/commit/69d3f686b07bc9b27dd77d2b5e3a4f0646ea7de2))

## 2.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.0.0-dev.1

Using money2_improver from git and money2: 5.2.1

## 1.28.0-dev.7

 - Update a dependency to the latest release.


## 1.28.0-dev.6

 - **FIX**: rollback codegen files. ([99c57171](https://github.com/broxus/nekoton_bridge/commit/99c57171a4c6dd24f66ebf326e5b041e7406fe22))
 - **FEAT**: add `simulateTransactionTree` method. ([2df468c3](https://github.com/broxus/nekoton_bridge/commit/2df468c350e1bf336ed87cce69121c38655c85f6))

## 1.28.0-dev.5

 - **FIX**: update nekoton. ([bfc8837d](https://github.com/broxus/nekoton_bridge/commit/bfc8837d4fc94e8a8247341c4a8fbc8cfe1c1727))

## 1.28.0-dev.4

 - **FIX**: `estimate_min_attached_amount` return type. ([7fbcb2a1](https://github.com/broxus/nekoton_bridge/commit/7fbcb2a11bb5e3b52cb8b58f9ee56e7651bbcd99))

## 1.28.0-dev.3

 - **FEAT**: `estimate_min_attached_amount` method ([#250](https://github.com/broxus/nekoton_bridge/issues/250)). ([f2b75c60](https://github.com/broxus/nekoton_bridge/commit/f2b75c6030a4d6e42b8f328ea2e2fbb112647dda))

## 1.28.0-dev.2

 - **FEAT**: add `token_root_details` method ([#248](https://github.com/broxus/nekoton_bridge/issues/248)). ([b8d962b6](https://github.com/broxus/nekoton_bridge/commit/b8d962b68ecca51c50b906613ddad29132a4dcf5))

## 1.28.0-dev.1

 - **FIX**: StorageFeeInfo model. ([de7d50ae](https://github.com/broxus/nekoton_bridge/commit/de7d50ae26cf1b77b062ba742ec217e402980f0e))

## 1.28.0-dev.0

 - **FEAT**: add compute_storage_fee ([#245](https://github.com/broxus/nekoton_bridge/issues/245)). ([02e762a8](https://github.com/broxus/nekoton_bridge/commit/02e762a8ca2595e98056a4dae65c97cf07569df0))

## 1.27.3

 - **FIX**: added disposed flag to transport ([#243](https://github.com/broxus/nekoton_bridge/issues/243)). ([b49beb8c](https://github.com/broxus/nekoton_bridge/commit/b49beb8c2ef7aeae28d7456d8ff396647f8626b6))

## 1.27.2

 - **FIX**: abi methods ([#241](https://github.com/broxus/nekoton_bridge/issues/241)). ([d3f908aa](https://github.com/broxus/nekoton_bridge/commit/d3f908aada544a80b26d68a948eb349cc2591fc9))

## 1.27.1

 - **FIX**: make Transaction.boc nullable ([#238](https://github.com/broxus/nekoton_bridge/issues/238)). ([93cc547a](https://github.com/broxus/nekoton_bridge/commit/93cc547a7988db0480556b6eededf19c622ac94d))

## 1.27.0

 - **FEAT**: add stacktrace to LogEntry ([#236](https://github.com/broxus/nekoton_bridge/issues/236)). ([50a639eb](https://github.com/broxus/nekoton_bridge/commit/50a639eb385edf49c03d3249f8858fd2daff9983))

## 1.26.1

 - **FIX**: add codeHash to contract ([#234](https://github.com/broxus/nekoton_bridge/issues/234)). ([911aec9c](https://github.com/broxus/nekoton_bridge/commit/911aec9c87c07f43a1ec597f437c87b7132168e8))

## 1.26.0

 - **FIX**: generated files ([#229](https://github.com/broxus/nekoton_bridge/issues/229)). ([ed63cac4](https://github.com/broxus/nekoton_bridge/commit/ed63cac4c5b2382f0b6fa34e120ae5066f08732b))
 - **FEAT**: added method to add multiple token wallets at timme ([#231](https://github.com/broxus/nekoton_bridge/issues/231)). ([f88c0da3](https://github.com/broxus/nekoton_bridge/commit/f88c0da3ed357316b1bd66dec49b985b92fe29d2))

## 1.25.2

 - **FIX**: http header for protobuf ([#226](https://github.com/broxus/nekoton_bridge/issues/226)). ([ade9998e](https://github.com/broxus/nekoton_bridge/commit/ade9998ea41ce9186cfc16ca5dbd5e108a943c79))

## 1.25.1

 - **FIX**: updateClockOffset param changed to Duration ([#224](https://github.com/broxus/nekoton_bridge/issues/224)). ([23ca1175](https://github.com/broxus/nekoton_bridge/commit/23ca1175e210dd3b856e49cb8c3292ababcbcd42))

## 1.25.0

 - **FEAT**: add clock offset ([#222](https://github.com/broxus/nekoton_bridge/issues/222)). ([a8457b6d](https://github.com/broxus/nekoton_bridge/commit/a8457b6df60ed21305efde135566326567d83ea6))
 - **FEAT**: empty ([#217](https://github.com/broxus/nekoton_bridge/issues/217)). ([80c18cb1](https://github.com/broxus/nekoton_bridge/commit/80c18cb15753b874f9329364507ed9e0c6f80676))
 - **FEAT**: empty thing just to satisfy melos version. ([6457f342](https://github.com/broxus/nekoton_bridge/commit/6457f342129728a00b78465aef6409d8fce09e71))

## 1.24.0

 - **FEAT**: add clock offset ([#222](https://github.com/broxus/nekoton_bridge/issues/222)). ([a8457b6d](https://github.com/broxus/nekoton_bridge/commit/a8457b6df60ed21305efde135566326567d83ea6))
 - **FEAT**: empty ([#217](https://github.com/broxus/nekoton_bridge/issues/217)). ([80c18cb1](https://github.com/broxus/nekoton_bridge/commit/80c18cb15753b874f9329364507ed9e0c6f80676))

## 1.23.0

 - **FIX**: remove isUtc from DateTimeJsonConverter ([#208](https://github.com/broxus/nekoton_bridge/issues/208)). ([5135f5df](https://github.com/broxus/nekoton_bridge/commit/5135f5dfd4333f280e00fe0ff7a1821120e0b219))
 - **FEAT**: add connection hash ([#211](https://github.com/broxus/nekoton_bridge/issues/211)). ([21050663](https://github.com/broxus/nekoton_bridge/commit/2105066331e7f89ac5ebcaad16931ef90e550898))
 - **FEAT**: automatically fetch network id in transport initialization ([#209](https://github.com/broxus/nekoton_bridge/issues/209)). ([81fd877e](https://github.com/broxus/nekoton_bridge/commit/81fd877e2c890f8a2cb9c120e6ba92f580488e2c))

## 1.22.0

 - **FEAT**: revert JRPC ([#206](https://github.com/broxus/nekoton_bridge/issues/206)). ([6b0f2941](https://github.com/broxus/nekoton_bridge/commit/6b0f2941874ac47103b4783cc86249a80e6f363b))

## 1.21.0

 - **FEAT**: implement more abi methods ([#204](https://github.com/broxus/nekoton_bridge/issues/204)). ([b0d957c4](https://github.com/broxus/nekoton_bridge/commit/b0d957c4411bc3527db24f577242da000132a32d))

## 1.20.0

 - **FEAT**: implement missed methods ([#202](https://github.com/broxus/nekoton_bridge/issues/202)). ([2bb7f4c4](https://github.com/broxus/nekoton_bridge/commit/2bb7f4c41f41838a255e29aee46189a8be72692e))

## 1.19.0

 - **FEAT**: update nekoton add proto transport ([#198](https://github.com/broxus/nekoton_bridge/issues/198)). ([edf97c3a](https://github.com/broxus/nekoton_bridge/commit/edf97c3a9d92a664a64c21057fa0b02361bfe847))
 - **FEAT**: nope (empty commit for melos) ([#194](https://github.com/broxus/nekoton_bridge/issues/194)). ([b50dbf49](https://github.com/broxus/nekoton_bridge/commit/b50dbf491167cd8c51d27aff7767c42bb68e4132))

## 1.18.1

 - Update a dependency to the latest release.

## 1.18.0

 - **FEAT**: fix address type ([#190](https://github.com/broxus/nekoton_bridge/issues/190)). ([ed260689](https://github.com/broxus/nekoton_bridge/commit/ed26068978293a0d9b6aa8f4457043f3bf2703c4))

## 1.17.1

 - Update a dependency to the latest release.

## 1.17.0

 - **FEAT**: replace string to bigint ([#182](https://github.com/broxus/nekoton_bridge/issues/182)). ([a87d238c](https://github.com/broxus/nekoton_bridge/commit/a87d238ccd60d04db094e2fc95e095247e78ab4c))

## 1.16.0

 - **FEAT**: replace StreamController to BehaviorSubject ([#177](https://github.com/broxus/nekoton_bridge/issues/177)). ([718662ea](https://github.com/broxus/nekoton_bridge/commit/718662ea8e6158fdd1b27cde3c85993764f6de90))

## 1.15.0

 - **FEAT**: update token wallet ([#175](https://github.com/broxus/nekoton_bridge/issues/175)). ([ba14b82a](https://github.com/broxus/nekoton_bridge/commit/ba14b82aa0b74ba2d2168f5f47344a25d53a0486))

## 1.14.0

 - **FEAT**: allow mocking bridge ([#172](https://github.com/broxus/nekoton_bridge/issues/172)). ([694cae99](https://github.com/broxus/nekoton_bridge/commit/694cae99342888c996d9e896dbc2f93d8c641e90))

## 1.13.1

 - **FIX**: replace Fixed to BigInt ([#170](https://github.com/broxus/nekoton_bridge/issues/170)). ([cd51777d](https://github.com/broxus/nekoton_bridge/commit/cd51777d13c83a57dbaf4113df146b2feb5e7e0f))

## 1.13.0

 - **FEAT**: update currency registration ([#168](https://github.com/broxus/nekoton_bridge/issues/168)). ([8623c385](https://github.com/broxus/nekoton_bridge/commit/8623c3855fc87a19f0c60e77e53adfecbaeac2b3))

## 1.12.0

 - **FEAT**: update more freezed fields ([#164](https://github.com/broxus/nekoton_bridge/issues/164)). ([b9434994](https://github.com/broxus/nekoton_bridge/commit/b9434994522bd85ed39bfbd2da6bca37147156ad))

## 1.11.0

 - **FEAT**: add Currency and Money to TokenWallet ([#162](https://github.com/broxus/nekoton_bridge/issues/162)). ([4b13f6bc](https://github.com/broxus/nekoton_bridge/commit/4b13f6bc10f3e41882a1ed19f69df93f3f28dfa0))

## 1.10.0

 - **FIX**: transport timeout ([#158](https://github.com/broxus/nekoton_bridge/issues/158)). ([c90981ca](https://github.com/broxus/nekoton_bridge/commit/c90981ca4ce9a5ac507290ef0c54d08cf3ff081c))
 - **FEAT**: add uri converter ([#159](https://github.com/broxus/nekoton_bridge/issues/159)). ([a0946942](https://github.com/broxus/nekoton_bridge/commit/a09469422c6efb3938b4f7f551498608d79e9ec0))

## 1.9.0

 - **FIX**: sealed freezed ([#156](https://github.com/broxus/nekoton_bridge/issues/156)). ([2a37d2d0](https://github.com/broxus/nekoton_bridge/commit/2a37d2d053b0e1114ffd2f1873f0028a3a92ad09))
 - **FEAT**: add refresing interface ([#154](https://github.com/broxus/nekoton_bridge/issues/154)). ([79d14980](https://github.com/broxus/nekoton_bridge/commit/79d14980dbaf6bef79fc76224b6a1df447a2509e))

## 1.8.2

 - **FIX**: nekoton_block venom feature ([#152](https://github.com/broxus/nekoton_bridge/issues/152)). ([c0001495](https://github.com/broxus/nekoton_bridge/commit/c00014955458db47a5bd2dc9345e3a91219ebec7))

## 1.8.1

 - Update a dependency to the latest release.

## 1.8.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 1.8.0-dev.15

 - **FIX**: updating data after dispose ([#145](https://github.com/broxus/nekoton_bridge/issues/145)). ([09bc1c9f](https://github.com/broxus/nekoton_bridge/commit/09bc1c9fdaa7af3ec8db86e174a01daeb742bf46))
 - **FEAT**: add tests for multi-subscribing ([#144](https://github.com/broxus/nekoton_bridge/issues/144)). ([2ae07a99](https://github.com/broxus/nekoton_bridge/commit/2ae07a99a00ad8e2c0c5b3f2a2bff70b6415f0b0))

## 1.8.0-dev.14

 - **FIX**: refreshing wallet ([#141](https://github.com/broxus/nekoton_bridge/issues/141)). ([21300c6a](https://github.com/broxus/nekoton_bridge/commit/21300c6a674d23f354d610ae789a4e0284dd3a0a))

## 1.8.0-dev.13

 - **REFACTOR**: add address and public key data classes ([#136](https://github.com/broxus/nekoton_bridge/issues/136)). ([10e8f924](https://github.com/broxus/nekoton_bridge/commit/10e8f924519439c8924557020ed25fa86a98b115))
 - **FIX**: use freezed-generated methods ([#137](https://github.com/broxus/nekoton_bridge/issues/137)). ([d653392b](https://github.com/broxus/nekoton_bridge/commit/d653392b4dc35a8f2b12bd2777cadf76e28a28df))
 - **FIX**: amount in test (will be refactored in future) ([#135](https://github.com/broxus/nekoton_bridge/issues/135)). ([29b60d41](https://github.com/broxus/nekoton_bridge/commit/29b60d41a8969f9ff4022206910616b5c24959e8))
 - **FEAT**: restart rust runtime, update nekoton, fix formatter ([#130](https://github.com/broxus/nekoton_bridge/issues/130)). ([972b5def](https://github.com/broxus/nekoton_bridge/commit/972b5def0fd74894ae9661bc10b568e275abb9bf))

## 1.8.0-dev.12

 - **FIX**: fix calls after dispose. Fix getting FullContractState ([#132](https://github.com/broxus/nekoton_bridge/issues/132)). ([f8898091](https://github.com/broxus/nekoton_bridge/commit/f88980917a18aae808a951be5c264ff92a83a290))

## 1.8.0-dev.11

 - **REFACTOR**: versioning create PR ([#118](https://github.com/broxus/nekoton_bridge/issues/118)). ([0e605265](https://github.com/broxus/nekoton_bridge/commit/0e605265d9f3abe946df5d39f5ad5cf0a2aeca76))
 - **FIX**: pass down body field in prepareTransfer ([#120](https://github.com/broxus/nekoton_bridge/issues/120)). ([b833cfa5](https://github.com/broxus/nekoton_bridge/commit/b833cfa56838a768442c0be9ecd508dc29d82079))

## 1.8.0-dev.10

 - **REFACTOR**: remove js bundle ([#115](https://github.com/broxus/nekoton_bridge/issues/115)). ([96b0fc05](https://github.com/broxus/nekoton_bridge/commit/96b0fc056aa156bfc53e44ead12de7e39f93a741))
 - **REFACTOR**: flutter dart upgrade ([#114](https://github.com/broxus/nekoton_bridge/issues/114)). ([5e1d9308](https://github.com/broxus/nekoton_bridge/commit/5e1d93083db6565fe9b19c06a354efd3ba6db706))

## 1.8.0-dev.9

 - **FIX**: change test skipping behavoir ([#109](https://github.com/broxus/nekoton_bridge/issues/109)). ([5db256d2](https://github.com/broxus/nekoton_bridge/commit/5db256d2a9a73904ff4e3a0c7b4345aa20fb981a))
 - **FIX**: 12 min timeout flaky tests ([#107](https://github.com/broxus/nekoton_bridge/issues/107)). ([35003c00](https://github.com/broxus/nekoton_bridge/commit/35003c00a70a48dbcd8afb84725531307543f13f))
 - **FEAT**: update keystore and accountsstorage logic ([#110](https://github.com/broxus/nekoton_bridge/issues/110)). ([414cfe18](https://github.com/broxus/nekoton_bridge/commit/414cfe18b3bac75b9bc58878e1ab8f29fe9045eb))

## 1.8.0-dev.8

 - **FIX**: caller parallelelism ([#105](https://github.com/broxus/nekoton_bridge/issues/105)). ([6892cca0](https://github.com/broxus/nekoton_bridge/commit/6892cca0af429d4bfad3ae6b03a9d8f89044931b))
 - **FIX**: transport tests ([#101](https://github.com/broxus/nekoton_bridge/issues/101)). ([0d3d9af3](https://github.com/broxus/nekoton_bridge/commit/0d3d9af375c12a55eb525fc2d6afcb96427c869f))

## 1.8.0-dev.7

 - **FIX**: transport tests ([#101](https://github.com/broxus/nekoton_bridge/issues/101)). ([0d3d9af3](https://github.com/broxus/nekoton_bridge/commit/0d3d9af375c12a55eb525fc2d6afcb96427c869f))
 - **FEAT**: replace BigInt to Fixed ([#98](https://github.com/broxus/nekoton_bridge/issues/98)). ([14dc50f6](https://github.com/broxus/nekoton_bridge/commit/14dc50f6e55fae59452dd250a306bd761e5b186e))

## 1.8.0-dev.6

 - **FIX**: add ios frb headers ([#95](https://github.com/broxus/nekoton_bridge/issues/95)). ([716a4d51](https://github.com/broxus/nekoton_bridge/commit/716a4d510d4d8b616edf21ab676de7cd1ca4f61b))

## 1.8.0-dev.5

 - **FIX**: add ios frb headers ([#95](https://github.com/broxus/nekoton_bridge/issues/95)). ([716a4d51](https://github.com/broxus/nekoton_bridge/commit/716a4d510d4d8b616edf21ab676de7cd1ca4f61b))
 - **FIX**: melos config ([#86](https://github.com/broxus/nekoton_bridge/issues/86)). ([2ec0c464](https://github.com/broxus/nekoton_bridge/commit/2ec0c4647746be298c84b362fdaf73353133008f))
 - **FEAT**: add generated files to git ([#88](https://github.com/broxus/nekoton_bridge/issues/88)). ([ef54b95a](https://github.com/broxus/nekoton_bridge/commit/ef54b95a6d763577e420af3cd7ccc8fa2d81670d))

## 1.8.0-dev.4

 - **FIX**: bump nb version ([#85](https://github.com/broxus/nekoton_bridge/issues/85)). ([0dd3f2f4](https://github.com/broxus/nekoton_bridge/commit/0dd3f2f4f4845e5caea4510f13627487bbd6add6))
 - **FIX**: js bundle build. ([5dd15d3c](https://github.com/broxus/nekoton_bridge/commit/5dd15d3c257a534db32b9f6f00168bb0541de2cf))

## 1.8.0-dev.3

 - **FIX**: js bundle build. ([5dd15d3c](https://github.com/broxus/nekoton_bridge/commit/5dd15d3c257a534db32b9f6f00168bb0541de2cf))
 - **FIX**: upgrade js packages ([#75](https://github.com/broxus/nekoton_bridge/issues/75)). ([76a8c91b](https://github.com/broxus/nekoton_bridge/commit/76a8c91b0317e7f815a4611e71a0d8b54a9247cc))
 - **FIX**: change packages version. ([ab1f7ff1](https://github.com/broxus/nekoton_bridge/commit/ab1f7ff13e7e874b1a8dcf7172464a76e843e246))
 - **FIX**: upgrade js packages. ([ef48ece8](https://github.com/broxus/nekoton_bridge/commit/ef48ece8ef25e9a3343fd95f2484cf6126133448))

## 1.8.0-dev.2

 - **FIX**: change packages version. ([ab1f7ff1](https://github.com/broxus/nekoton_bridge/commit/ab1f7ff13e7e874b1a8dcf7172464a76e843e246))

## 1.7.0-dev.1

 - **FIX**: upgrade js packages. ([ef48ece8](https://github.com/broxus/nekoton_bridge/commit/ef48ece8ef25e9a3343fd95f2484cf6126133448))
 - **FIX**: downgrade frb version temporary ([#58](https://github.com/broxus/nekoton_bridge/issues/58)). ([89e898b9](https://github.com/broxus/nekoton_bridge/commit/89e898b9e4acc07d35be4ef296e9e0baeb572f82))
 - **FEAT**: add get_network_id to nekoton. Expand github integration test time ([#66](https://github.com/broxus/nekoton_bridge/issues/66)). ([4f524d0b](https://github.com/broxus/nekoton_bridge/commit/4f524d0b09962faf395769722c9d393c1a71398f))
 - **FEAT**: add inpage provider for webview ([#65](https://github.com/broxus/nekoton_bridge/issues/65)). ([bd5a906f](https://github.com/broxus/nekoton_bridge/commit/bd5a906fedb756de797db60f29626e0c33d543d3))
 - **FEAT**: macos build ([#43](https://github.com/broxus/nekoton_bridge/issues/43)). ([20911438](https://github.com/broxus/nekoton_bridge/commit/20911438421747a3f01add0b02e599b14cbe3068))
 - **FEAT**: caller tests ([#23](https://github.com/broxus/nekoton_bridge/issues/23)). ([4c19a66b](https://github.com/broxus/nekoton_bridge/commit/4c19a66b6fd7637a1059fd68010157531a5c487c))
 - **FEAT**: add logger test ([#22](https://github.com/broxus/nekoton_bridge/issues/22)). ([a84aac4d](https://github.com/broxus/nekoton_bridge/commit/a84aac4dea958e197567747326cb12f62bc8c2dd))
 - **FEAT**: melos upgrade ([#18](https://github.com/broxus/nekoton_bridge/issues/18)). ([114b5910](https://github.com/broxus/nekoton_bridge/commit/114b591083670f714ea03050eb14e84a572cd729))

## 1.7.0-dev.0

 - **FEAT**: add dart caller return value ([#12](https://github.com/broxus/nekoton_bridge/issues/12)). ([872ca097](https://github.com/broxus/nekoton_bridge/commit/872ca09747c48b0ffc67000391f77496ea19350f))
 - **FEAT**: Attempt generate from multiple files ([#8](https://github.com/broxus/nekoton_bridge/issues/8)). ([26440721](https://github.com/broxus/nekoton_bridge/commit/2644072163afaa2f6c113770115b5d8df0a607e9))

## 1.6.0

 - **FIX**: version up.
 - **FIX**: flutter_nekoton_bridge version fix.
 - **FEAT**: version up.

## 1.0.3

 - **FIX**: change version.

## 0.0.1

* TODO: Describe initial release.
