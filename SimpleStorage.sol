// SPDX-License-Identifier: MIT

//Reseaux   Rinkeby
//Account   0xD2E2535e000C0D9b31F99eeaAa9A51F9b099640b
//contract  0xd94a54bb6425bc6411b8B68307224766294da9f6

pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private _storedData;
    
    function storedData() public view returns (uint256) {
        return _storedData;
    }
    
    function setStoredData(uint256 value) public {
        _storedData = value;
    }
}