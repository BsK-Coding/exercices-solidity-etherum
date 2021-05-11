// SPDX-License-Identifier: MIT

//Reseaux   Goerli ou VM (J'ai eu un bug)
//Account   0xD2E2535e000C0D9b31F99eeaAa9A51F9b099640b
//Contract  0x9112E84fb27A980433BB6f8A2082C72ccbe27c74

pragma solidity ^0.8.0;

contract TheOne {
    uint256 private _nb=1;
    
    function one() public view returns (uint256) {
        return _nb;
    }
}