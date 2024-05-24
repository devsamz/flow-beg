# Token Registry Smart Contract

## Overview

This repository contains the source code for a Token Registry smart contract, designed to manage token registration on the blockchain. The contract provides functionality for registering new tokens and retrieving token information.

## Table of Contents

- [Features](#features)
- [Structure](#structure)
- [Transaction Code](#transaction-code)
- [Script Code](#script-code)
- [Usage](#usage)

## Structure

### Token Information

The contract defines a `TokenInfo` structure with the following properties:

- `symbol` (String): The symbol of the token.
- `name` (String): The name of the token.
- `totalSupply` (UInt64): The total supply of the token.
- `owner` (Address): The owner address of the token.

## Features

- **Token Registration**: Users can register new tokens with a symbol, name, total supply, and owner address.
- **Token Information Retrieval**: Retrieve token information based on token symbols.

## Transaction Code

### Register Token

```cadence
import TokenRegistry from 0xADDRESS

transaction(symbol: String, name: String, totalSupply: UInt64, ownerAddress: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        TokenRegistry.registerToken(symbol: symbol, name: name, totalSupply: totalSupply, ownerAddress: ownerAddress)
        log("Token registered successfully.")
    }
}
```

## Script Code

### Get Token Info

```cadence
import TokenRegistry from 0xADDRESS

pub fun getTokenInfo(symbol: String): TokenRegistry.TokenInfo {
    return TokenRegistry.tokens[symbol]!
}

```
