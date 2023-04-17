// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;
// 0xd2a5bC10698FD955D1Fe6cb468a17809A08fd005
contract Counter {
    uint public count;

    function incerement() external {
        count += 1;
    }
}

// Bir Interface, diger sözlesmeler tarafindan cagrilabilecek fonksiyon adlarini, parametrelerini,
// ve genel türlerini icerir.

interface ICounter {
    function count() external view returns(uint);

    function incerement() external;
}


contract ExampleCounter{
    ICounter public counter;

    constructor(address _counterContractAddress) {
        counter = ICounter(_counterContractAddress);
    }

    function incerementFunc() external returns(uint){
        counter.incerement();
        uint currentCount = counter.count();
        return currentCount;
    }
}