//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/tokens/ERC721/ERC721.sol";
import "@openzeppelin/contracts/tokens/ERC721/extentions/ERC721URIStorage.sol";

contract RealEstate is ERC721URIStorage {
     using Counters for Counters.Counter;
     Counters.Counters private_tokenIds;

constructor() ERC721("MOBO GOBBLER", "MOBO") {}

function awardItem(address player, string memory tokenURI)
        public
        returns (uint256)
    {
        uint256 tokenId = _nextTokenId++;
        _mint(player, tokenId);
        _setTokenURI(tokenId, tokenURI);

        return tokenId;
    }
    function totalSupply() public view returns (uint256){
         return_tokenIds.current();
    }

{
