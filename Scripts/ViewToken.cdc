import TokenRegistry from 0x06

pub fun getTokenInfo(symbol: String): TokenRegistry.TokenInfo {
    return TokenRegistry.tokens[symbol]!
}

