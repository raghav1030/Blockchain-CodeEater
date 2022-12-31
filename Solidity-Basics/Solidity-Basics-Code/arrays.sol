// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

contract Arrays{

    uint[] public arr = [10,20,30,40,50];

    function setValue(uint index , uint value) public {
        arr[index] = value;
    }

    function arrLength() public view returns(uint){
        return arr.length;
    }

    function pushElement(uint Element) public {
        arr.push(Element);
    }

    function popElement() public {
        arr.pop();
    }

}