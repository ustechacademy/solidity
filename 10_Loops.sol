// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Loops {

    uint[] public numbers;  //dynamic 
    uint[4] public numbers2 = [1,2,3,4]; //fixed size - length -> 4

    // 1 sayisina ulasan ve bunu return bir fonksiyon yaziniz

    function getFirst() public view returns(uint){
        return numbers2[0];
    }


    // kullanicidan bir uint array alacagiz, array icerisinde 
    //bulunan sayilari toplayan ve bunu total olarak return eden bir fonksiyon
    // memory & call data ??
    function sumArray(uint[] memory arr) public pure returns(uint){
        uint total;
        for(uint i; i < arr.length; i++){
            total += arr[i];
        }
        return total;
    }

    /*
        while ve do while solidty cok nadir kullanilan 2 loop tipi
        gas limiti asiyorlar, sizin transactionizin hata ile sonuclanmasina sebep oluyorlar.

        Genel olarak for döngüsü kullaniliyor.
    */

    function whileLoop() public pure returns(uint){
        uint j;
        while (j < 10){
            ++j; // pre-increment operator
            //j++;
        }
        return j;
    }

    function forLoop() public pure returns(uint){
        uint i;
        for(i = 0; i < 10; i++){
            if(i == 3){
                continue; // 3ü atladi.
            }
            // i -> 5 esit oldugunda döngüden cikmasini istiyoruz.
            if(i == 5){
                break;
                //return i;
            }
        }
        return i;
    }



}