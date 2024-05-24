import TokenRegistry from 0x06

transaction(symbol: String, name: String, totalSupply: UInt64, owner: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        TokenRegistry.registerToken(symbol: symbol, name: name, totalSupply: totalSupply, owner: owner)
        log("Token registered successfully.")
    }
}
