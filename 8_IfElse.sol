// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract IfElse {
    function example(int x) public pure returns(uint){
            
            if(x < 10 && x >= 0) {
                return 1;
            }
            else if(x < 0){
                return 2;
            }
            else {
                return 0;
            }
    }

    function ternary(int x) public pure returns(uint){
        //return x < 10 ? 1 : 0;
        return (x < 10 && x >= 0) ? 1 : (x < 0) ? 2 : 0;
    }

    // uint sayi, bu sayi cift ise true, bu cift degil ise false dönüceksiniz. 
    //Bunu yapan bir fonsiyon yazin. isEven

    function isEven(uint x) public pure returns(bool){
        if(x % 2 == 0){
            return true;
        }
        else{
            return false;
        }
        
        //return (x % 2 == 0) ? true : false;
    } 

}