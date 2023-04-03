// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract FirstApp {
    /* count degiskeni tanimliyoruz 
             -> arttirma fonksiyonu
             -> azaltma fonksiyonu
             -> countu get eden bir view fonksiyonu olusturun.
    */
    uint public count; // default 0

    function getCount() public view returns (uint) {
        return count;
    }

    function add() public {
        //count = count + 1;
        //count++;
        count += 1;
    }

    function subtract() public {
        count -= 1;
    }

}