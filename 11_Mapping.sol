// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Mapping {
    /*  
        mapping(keyType => valueType)


        address -> uint
        uint -> uint
        string -> address
        
    
    0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 -> 88 + 10

        {
            address: uint
        }


        Kripto paranin (holder) -> Holder Wallet 0x11Ff38D1D029d85536B7ce8348c6843d59EFb818 -> KöpekCoin 100,000

        Stake Pool Contract -> Contract Address 0x..... 100,000 + 50,000 - 150,000 -> ödül veriliyor

        Kripto para (token) -> Token address 0x....


    */

     mapping(address => uint) public myMap; // blockchainde store edilir

    // State degiskeskenini modify edebiliyor 
    //-> Default olarak bunu yapar
     function setValue(uint _value) public {
         myMap[msg.sender] = _value;
     }

     function getValue(address _addr) public view returns(uint){
         return myMap[_addr];
     }



    /* 
        Bir online ürünler satan mağaza için akıllı bir sözleşme oluşturuyorsunuz 
        ve satışa sunulan ürünleri fiyatlariyla takip etmeniz gerekiyor. 
        Bu bilgiyi mapping kullanarak smart contractinizda depolayin. 
        Ürün idlerini ve ücretlerini depolamaniz bekleniyor.

        mapping ?
        addProduct function
        getPrice function
    */


     mapping(address => mapping(uint => uint)) public prices;

     function addProduct(uint productId, uint price) public {
         prices[msg.sender][productId] = price;
     }

     function getPrice(uint productId) public view returns(uint){
         return prices[msg.sender][productId];
     }

     function remove(uint productId) public {
         // default value reset
         delete prices[msg.sender][productId];
     }
}