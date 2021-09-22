// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFTContract is ERC1155, Ownable {
    
    //Declared tokens and assigned them an id each.
    uint256 public constant KITTY = 0;
    uint256 public constant PUPPY = 1;
    
    //constructor declared to set an inital value for the declared tokens.
    //ERC1155 constructor declared so that uri may be added to deploy it to the marketplace
    constructor() ERC1155("") {
        _mint(msg.sender, KITTY, 5, "");
        _mint(msg.sender, PUPPY, 10, "");
    }
    
    //Allows owner to mint more tokens
    function mint(address _account, uint256 _id, uint256 _amount) public onlyOwner {
        _mint(_account, _id, _amount, "");
    }
    
}