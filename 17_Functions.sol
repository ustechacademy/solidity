// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Functions {

    address public addr; // Storage  -> blockchain store
    uint public test;
    string public name;


    // PURE, VIEW, Hic kullanmamak

    function returnMany() public pure returns(uint, bool, uint){
        return (1, true, 5);
    }

    function namedReturn() public pure returns(uint x, bool y, uint z){
        return (1, true, 5);
    }

    function example() public pure returns(uint,bool,uint,uint,uint){

        (uint i, bool b, uint c) = returnMany();
        
        uint a = i * c;
        uint z = c - i;

         return(i,b,c,a,z);
    }

    // view ve pure -> read ederler
    // view state degiskenlerini read ederse view olur
    // state degiskenleriyle alakaniz bulunmuyorsa pure

    function returnAddr() public returns(address){
        // merkle 
        addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        return addr;
    }

    function arrayInput(uint[] memory _arr) public pure returns(uint[] memory ){
        return _arr;
    }

    mapping(uint => uint) public myMap2;

    // mapping herhangi bir fonksiyonda input veya output olamaz.
    // Key ve value pairi olarak esliyor ve store ediyor.
    /*
    function mappingInput( myMap2) public {

    }
    */


}