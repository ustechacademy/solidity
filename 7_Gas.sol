// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Gas {

    /*
        computanational effort -> gas -> price -> ether

        gas spent -> 21000 Gas   ->  ne kadar gas harcayacagi
        gas price -> 28 gwei

        Gas cost -> 21000 * 165 gwei = 588000 GWEI -> 0.000588eth * 1819usd(PER ETHER) = 1.069572 USD

        Gas cost -> 130685 * 25 Gwei = 3267125 GWEI

        New Gas Cost -> 131555  

        Kodun ne kadar complex oldugu ve o sirada agin
        ne kadar yogun olduguna göre gas fee ücretleri degisiyor.
    */

    uint public i = 0;

    function forever() public {
        while (i < 10) {
            i +=1;
        }
    }
}