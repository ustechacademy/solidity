// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Array {

    uint[] public arr = [1,2,3,4];

    uint[4] public arr2 = [5,6,7,8];

    function getValue(uint i) public view returns(uint){
        return arr[i];
    }

    function getArr() public view returns(uint[] memory){
        return arr;
    }


    function getArr2() public view returns(uint[4] memory){
        return arr2;
    }

    // Arraye bir eleman ekleyecegiz, 
    // parametre olarak kullanicidan eklenecek olan eleman alinacak
    function addValue(uint a) public {
        arr.push(a); // add to end
    }

    function remove() public {
        arr.pop(); // last element remove
    }

    function removeFromArr2() public {
        //arr2.pop(); sabit arrayde pop edemeyiz.
    }

    function updateArray() public {
        //arr2[0] = 89; // Buna bakacagiz!
    }

    // Struct, enum <--> Storage, calldata, memory
}