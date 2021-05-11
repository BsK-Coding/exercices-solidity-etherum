// SPDX-License-Identifier: MIT

//Reseaux   Rinkeby
//Account   0xD2E2535e000C0D9b31F99eeaAa9A51F9b099640b
//Contract  0xe93749d8F99c5785932043c7381fDbDA783D207C

pragma solidity ^0.8.0;

contract CheckOdd {
    mapping(address => bool) private _nb;                   //Par défaut la valeur est false
    
    function check(uint256 nb_) public pure returns (bool) {
        if(nb_ %2 != 0) {
            return true;
        } 
        else {
           return false; 
        }
    }
}