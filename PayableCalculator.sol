// SPDX-License-Identifier: MIT

//Reseaux   Rinkeby
//Account   0xD2E2535e000C0D9b31F99eeaAa9A51F9b099640b
//Contract  
"
/* Pas eu le temps de mettre en place le "payable" pour les transfert de finney et d'implémenter le modifier non terminé dans les functions */

pragma solidity ^0.8.0;

contract PayableCalculator {
    
    /* STATE VARIABLES */
    uint256 private _functionPayable=1000000000000000;      //GAS utilisé par les functions 1 Finney = 1000000000000000 Wei
    address private _owner;                                 //La valeur en GAS par défaut utilisé dans le contract s'exprime en Wei
                                                            
    /* MODIFIER */                                                     
    modifier costFunction() {
        require(msg.sender == _owner, "Ownable: Only owner can call this function");
        require(msg.value > _functionPayable);
        _;
    }
    
    /* FUNCTIONS */
    function add(uint256 nb1, uint256 nb2) public view returns (uint256) {
        return nb1 + nb2;
    }
    
    function sub(uint256 nb1, uint256 nb2) public view returns (uint256) {
        require(nb1 > nb2, "Le 1er nombre doit être supérieur au second nombre pour ne pas être négatif");
        return nb1 - nb2;
    }
    
    function mul(uint256 nb1, uint256 nb2) public view returns (uint256) {
        return nb1 * nb2;
    }
    
    function div(uint256 nb1, uint256 nb2) public view returns (uint256) {
        require(nb2 > 0, "Le second nombre (Dividende) doit être différent de 0 et positif");
        return nb1 / nb2;
    }
    
    function add(uint256 nb1, uint256 nb2) public view returns (uint256) {
        require(nb1 > nb2, "Le 1er nombre doit être supérieur au second nombre");
        return nb1 % nb2;
    }
}