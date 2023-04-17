// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract FunctionModifier {

    address public owner;
    uint public tokenPerSecond; // 1 saniyede dagitilacak token miktari -> 100 token ödül dagitiliyor

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "You're not owner");
        _; // function body placeholder -> 
    }

    // modifier -> tokenPerSecond pozitif bir sayi olmali bunu kontrol eden bir modifier yaziniz.

    modifier onlyPositiveNumber() {
        require(tokenPerSecond > 0, "Number must be positive");
        _; // function body placeholder
    }

    function changeTokenPerSecond(uint _i) public onlyOwner onlyPositiveNumber {
        // öyle bir require yazalim ve sadece owner calistirabilsin
      
        tokenPerSecond = _i;
    }

    function example() public onlyOwner onlyPositiveNumber {
  

    }

    function example2() public onlyOwner onlyPositiveNumber {

    }

    //fonksiyonun amaci owner degistirmek, transferOwnership -> newOwner adres al ve bunu ownera set et.
     function transferOwnership(address newOwner) public onlyOwner{
        //require(newOwner != address(0)); // 0x0000000000000000000000000000000000000000
        owner = newOwner;
    }



    bool public locked; // default -> false

    modifier noReentrancy() {
        require(!locked,"No Reentrancy");
        locked = true;
        _; //deposit / withdraw placeholder
        locked = false;
        // events -> loglayabilirsin durumu
    }

    // noReentrancy

    mapping(address => uint256) public balances;

    // deposit önceden yapildi yada yapilacak deposit fonksiyonumuz var

    function deposit() public noReentrancy {
        // balance arttiriyor.
        //100 ether deposit ediyor
    }
    
    function withdraw(uint amount) public noReentrancy {
        require(amount <= balances[msg.sender], "Insufficient Balance");
        (bool success, ) = msg.sender.call{value: amount}(""); // transfer
        require(success, "Transfer failed");
         balances[msg.sender] -= amount;
    }

    // events - constructor ve inheritance 
}