// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import ERC20 Contract from OpenZepplin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract AYToken is ERC20 {
    //call constructor inside ERC20
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        //Get some tokens
        _mint(msg.sender, 1000 * (10**18));
    }   

    function mint() public {
        _mint(msg.sender, 1000 * (10**18));
    }
}