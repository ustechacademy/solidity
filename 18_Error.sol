// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Errors{
    /*
        require -> inputs(params) validated by this function
        revert ->  i > 10 -> revert, error throw ediyoruz. -> message return ediyor
        assert ->  bir condition parametre aliyor ve false ise error throw ediyor.
    */

    function testRequire(uint _i) public pure {
  
        // require(condition,message)
        require(_i > 10, "Input must be greater than 10"); // 11,12,13,14,15 ....
        //
        //
        
    }

    function testRevert(uint _i) public pure {
        // revert(message)
        if( _i <= 10){ // 10,9,8....
            revert("input must be greater than 10");
        }   
    }

    uint public num;
    function testAssert(uint a, uint b) public pure returns(uint) {
        // assert(condition(comparison))
        uint c = a + b;
        assert(c == a - b); // 14 == 6
        // logic
        return c;
    }

    function deposit(uint _amount) public  {
        //  99999999900000000000      >= 100000000000000000000
        // 0.1 ether varsa cüzdaninda NFTyi mintle 
        require(msg.sender.balance >= _amount, "Insufficent Balance");
        // requiredan gecemezse alt kisimdaki kodlar calismaz.
    }



}