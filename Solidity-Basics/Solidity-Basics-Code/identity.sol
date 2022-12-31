// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract identity{
    string public Name;
    uint public Age;
    
    constructor() 
    {
        Name = "Raghav";
        Age = 19;
    }

    function getName() view public returns (string memory){
        return Name;
    }

    function getAge() view public returns(uint ){
        return Age;
    }

    function setAge() public{
        Age = Age + 1;
    }

}