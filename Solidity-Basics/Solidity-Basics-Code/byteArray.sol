// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

contract byteArray {
    bytes3 public b3 ;
    bytes public b2 ;

    function setter() public {
        b3 = 'ab3' ;
        b2 = 'a ' ;
    }

    

    function pushElement() public {
        b2.push('d');
    }

    function getElement(uint i) public view returns(bytes1){
        return b2[i];
    }

    function getLength() public view returns(uint){
        return b2.length;
    } 
}
