// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

struct Student {
    string name ;
    uint class;
}

contract Mapping {

    // BASIC MAPPING

    mapping (uint => string) public roll_no;

    function setter( uint key , string memory name) public
    {
        roll_no[key] = name ;
    }

    // MAPPING WITH THE STRUCTURE

    mapping (uint => Student) public data;

    function dataSetter(uint roll_no , string memory name , uint class) public{
        data[roll_no] = Student(name , class);
    }

    


}