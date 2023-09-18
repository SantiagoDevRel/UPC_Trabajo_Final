//EIP 1167 https://eips.ethereum.org/EIPS/eip-1167 - ERC-1167: Minimal Proxy Contract 

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./DAO.sol";
import "@optionality.io/clone-factory/contracts/CloneFactory.sol";
import "@openzeppelin/contracts/access/Ownable.sol"

contract FactoryDAO is Ownable, CloneFactory{

    //~~~~ Libraries ~~~~

    //~~~~ State variables ~~~~~
    address public s_templateDAO;
    DAO[] private s_daosCreated;


    function setTemplate(address _template) public {
        s_templateDAO = _template;
    }

    function createDAO() public onlyOwner {
        address clone = createClone(s_templateDAO);
        DAO(clone).init(); //add any args to initialize the DAO
        s_daosCreated.push(clone);
    }

    //~~~~ Functions ~~~~
    //get # of total daos
    //get each dao details (index argument)
    //

}