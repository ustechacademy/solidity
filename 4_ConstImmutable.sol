// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract ImmutablesConstant {
    /*
        Contants are not modified
        Constants variables, contract(blockchain) storageda yer kaplamiyorlar.

        Immutable degiskenler degistirilemezler. // fixed

        Sabit degiskenler coding convention uppercase olarak yazilirlar.
    
    */
    address public constant MYADDRESS =  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MYNUMBER = 1234;

    // Bir fonksiyon yaziyoruz, myNumber sayisini 456 ile degistirin.

    address public immutable MY_ADDRESS; 
    uint public immutable MY_UINT;
    uint256 public totalSupply;

    // contracti deploy ederken bir kere calisacak bir özel fonksiyon.
    constructor(uint _myUint, uint256 _totalSupply){
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
        totalSupply = _totalSupply;
    }
}