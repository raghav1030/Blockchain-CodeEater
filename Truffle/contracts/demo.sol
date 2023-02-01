// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

contract demo{
    uint number;
    function setNumber(uint _number) public {
        number = _number ;
    }

    function getNumber() view public returns(uint){
        return number;
    }
}