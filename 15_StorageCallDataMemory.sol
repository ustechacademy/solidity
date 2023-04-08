// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract StorageCallDataMemory {
    /*
        storage: store on blockchain, 
            -> en yüksek maliyete sahip yapimiz
        memory: gecici olarak depolanir, fonksiyon islemi bitirdikten sonra silinir. 
            -> storage tipine göre daha az maliyetli
        calldata: özel bir bellek bölgesi ve sadece read islemi icin kullanilabilir.
            -> memory tipine göre daha az maliyetli

        az maliyetliden cok maliyetliye siralama -> calldata < memory < storage

        String, array, struct ifadelerin memory ile tanimlanmasi gerekir.

        String -> bellek acisindan ve gas maliyeti acisindan 
        pahali o yüzden dikkatli kullanmak lazim.
    */

    uint storedData; // storage bölgesinde depolanir
    string public name; // storage
    struct Person { // storage
        string name;
    }

    function setName(string calldata _name) public{
        name = _name;
    }

}