// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract PureView {

    // Contract State variables
    uint public z = 1200;

    /*
        pure: if a function does not read state variables or modify then we need to use pure. 
        view: if a function does not modify state variables then we will use view. It just reads the state variables.
    
    */ 
    // parametre olarak kullanicidan alinan 2 sayiyi carpan bir fonsiyon yaziyorum.
    function multiply(uint a, uint b) public pure returns(uint){
        return a * b;
    }

    function getNumber() public view returns(uint){
        return z;
    }

}