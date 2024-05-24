pub contract TokenRegistry {

    pub var tokens: {String: TokenInfo}

    pub struct TokenInfo {
        pub let symbol: String
        pub let name: String
        pub let totalSupply: UInt64
        pub let owner: Address

        init(_symbol: String, _name: String, _totalSupply: UInt64, _owner: Address) {
            self.symbol = _symbol
            self.name = _name
            self.totalSupply = _totalSupply
            self.owner = _owner
        }
    }

    pub fun registerToken(symbol: String, name: String, totalSupply: UInt64) {
        let newToken = TokenInfo(_symbol: symbol, _name: name, _totalSupply: totalSupply, _owner: self.publisher)
        self.tokens[symbol] = newToken
    }

    init() {
        self.tokens = {}
    }
}
