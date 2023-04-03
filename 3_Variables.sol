// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Variables {
    /* 
      local:
            - function icerisinde tanimlanirlar
            - blockchainde depolanmazlar
      state:
            - function disarisinda tanimlanirlar
            - blockchainde depolanirlar
      global:
            - blockchain ile alakali global degiskenlerdir, veri olarak kullanirlar  
            - global bilgilere sadece function icerisinden ulasabiliyoruz
    */
    string public text = "Hello state"; // state variable
    uint public num = 123; // state variable
    address public caller; // state variable

    function doSomething() public {
        uint i = 234; // local variable
        
        // global variables
        uint timestamp = block.timestamp; // current timestamp for block
        address sender = msg.sender; // address of function caller

        caller = msg.sender;
    } 
    // ben view functionim ve herhangi bir state degiskenini degistirmiyorum 
    // sadece ve sadece gösteriyorum
    function getCaller() public view returns(address){ 
        return caller;
    }

}

