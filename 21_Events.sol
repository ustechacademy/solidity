// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Events {
    // Events allow log on blockchain
    // Cheap logging, gas acisindan ve yer kaplama acisindan daha az maliyete sahipler.


    event NewUser(address userAddress, string name);

    event Success();

    function createUser(string memory _name) public {
        // user created

       emit NewUser(msg.sender, _name);
       emit Success();
    }

    event ItemSold(address seller, address buyer, string itemName, uint price);

    function sellItem(address _buyer, string memory _name, uint _price) public {
        // product sold

        emit ItemSold(msg.sender, _buyer, _name, _price );
    }


}