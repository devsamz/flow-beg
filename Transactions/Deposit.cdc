import NonFungibleToken from 0x07
import CryptoPoops from 0x07

transaction(recipient: Address, _name: String, _favFood: String, _luckyNo: Int) {
  
  prepare(acct: AuthAccount) {
    let minter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!

    // Borrow a reference to the recipient`s public Collection
    let pubRecipientRef = getAccount(recipient).getCapability(/public/Collection)
                    .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                    ?? panic("This account has no Collection.")

    
    // Mint and  Deposit the NFT in the recipient's collection
    pubRecipientRef.deposit(token: <- minter.createNFT(name: _name, favouriteFood: _favFood, luckyNumber: _luckyNo))
  }

  execute {
    log(" NFT Minted and Deposited succesfully!")
  }
}