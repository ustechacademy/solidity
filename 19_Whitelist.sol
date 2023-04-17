// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Whitelist {
    address[] public whitelist;

    function isWhitelisted(address _address) public view returns(bool){
        for(uint i = 0; i < whitelist.length; i++) {
            if(whitelist[i] == _address) {
                return true;
            }
        }
        return false;
    }

    function addToWhitelist(address _address) public {
        // ! -> not -> degili
        require(!isWhitelisted(_address),"Address is already whitelisted"); // kontrole göre gas harcar, kontrol true ise normal sekilde calisir, false ise execution durur ve gas harcanir.
        whitelist.push(_address);
        // address baska bir listeye ekleniyor
        // addrese airdrop token yollaniyor
        // adresin balance kontrolü yapiliyor

    }
}