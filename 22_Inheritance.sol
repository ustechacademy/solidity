// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

// import et

contract Animal{
    string public name;

    constructor(string memory _name){
        name = _name;
    }

    function makeSound() public virtual pure returns(string memory){
        return "Hayvan sesi";
    }
}


contract Dog is Animal {
    constructor(string memory _name ) Animal(_name){}

    function makeSound() public pure override returns(string memory){
        return "Hav hav";
    }

    function example() public pure {
        makeSound();
    }
}

// openzepplin -> ERC20 TOKEN protocol

/*
contract UstechToken is ERC20,Ownable{

    // NAME, Supply, Decimal
    constructor(){

    }
}
*/

