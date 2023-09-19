
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract TokenDAO is ERC20, Ownable{

    constructor(string memory name, string memory symbol, uint256 quantity) ERC20(name, symbol){
        _mint(msg.sender,quantity);
    }

    function mint(address _user, uint256 _quantity) external onlyOwner(){
        _mint(_user, _quantity); 
    }





}

