import TokenRegistry from 0x06

pub fun main(symbol: String): TokenRegistry.TokenInfo {
    return TokenRegistry.tokens[symbol]!
}

