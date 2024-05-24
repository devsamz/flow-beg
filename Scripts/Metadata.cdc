import NonFungibleToken from 0x07
import CryptoPoops from 0x07

//  script to retrieve NFT metadata using the ID
pub fun main(acct: Address, id: UInt64): &NonFungibleToken.NFT {
// Borrow a reference to the public collection using the provided address
    let pubRef = getAccount(acct).getCapability(/public/Collection)
      .borrow<&CryptoPoops.Collection{CryptoPoops.MyAuthCollection}>() 
              ?? panic("You do not have any NFT")
    
  let metadata = pubRef.borrowAuthNFT(id: id)
  
  // Log NFT metadata
  log(metadata)
  
  return metadata
}