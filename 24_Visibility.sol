// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Visibility {

        /*
            public -> any contract and any account and any function (can inherit)
            private -> inside the contract functions ( can not inherit)
            internal -> inside contract, can inherit to another contract
            external -> other contracts, accounts can also access (can inherit)
        */

        function privateFunc() private pure returns(string memory){
            return "private function called";
        }

        function changeFunc() public pure returns(string memory) {
            return privateFunc();
        }

        function internalFunc() internal pure returns(string memory){
            return "internal func called";
        }

        function testInternalFunc() public pure returns(string memory){
            return internalFunc();
        }

        // Public & External
        // Public hem degiskenler hem fonksiyonlar icin kullanilabilirler
        // External sadece fonksiyonlar icin kullanilir.

        function publicFunc() public pure returns(string memory){
            return "Public function called";
        }

        function externalFunc() external pure returns(string memory){
            return "External func called";
        }

        // Private, Internal ve Public erisim belirleyicileri variables ile kullanilabiliyorlar.
        string private privateVar = "Private variable";
        string internal internalVar = "Internal variable";
        string public publicVar = "Public variable";
        // Degiskenler external olamazlar.
        //string external externalVar = "External variable";

        // External daha az gaz tüketir -> Public fonksiyonlara göre
        // Public fonksiyonlarda get islevi olusturuluyor.
}

contract Child is Visibility {
    
    /*
    function privateFunc() private pure returns(string memory){
        return "Child private func";
    }*/

    function example() public pure returns(string memory,string memory){
        return (internalFunc(),publicFunc());
    }




}