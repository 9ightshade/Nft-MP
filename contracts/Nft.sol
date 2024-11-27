// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//also removed ownable from smart contract so anyone can use our smart contract to mint nft

contract MyNFT is ERC721URIStorage, {
    uint256 private _tokenIds;

    constructor(address initialOwner) ERC721("MyNFT", "NFT") Ownable(initialOwner) {}

    function mintNFT(address recipient, string memory tokenURI)
        public
        /**
        onlyOwner removing this means anyone can mint an nft with our smart contract
        */
        returns (uint256)
    {
        _tokenIds++;

        uint256 newItemId = _tokenIds;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}