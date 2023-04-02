// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract BadgerCoinNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("BadgerCoinNFT", "BCNFT") {}

    function mintNFT(
        address recipient,
        string memory tokenURI,
        uint256 tokenId
    ) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = tokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}

// example = example
// BadgerCoinNFT myNFT = new BadgerCoinNFT();
// myNFT.mintNFT(msg.sender, "https://example.com/metadata/1", 1);
