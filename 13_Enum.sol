// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract EnumData {
    /*
        Bir kez tanimlandiktan sonra güncellenemezler.
        Sabitler listesi 
        Gas acisindan enum sabitleri faydali
    */

    enum Weekdays {Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday}

    // index numbers 0,1,2,3,4,5,6

    Weekdays public day;

    function setDay(Weekdays _day) public {
        day = Weekdays(_day);
    }

    function getDay() public view returns(Weekdays){
        return day;
    }

    function getDayName() public view returns(string memory){
         if(day == Weekdays.Monday){
             return "Monday";
         }
    }

}