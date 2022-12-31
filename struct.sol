// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

struct student{
    uint roll ;
    string name;
}

contract Structure{
    student public s1;

    constructor(uint _roll , string memory name){
        s1.roll = _roll;
        s1.name = name;
    }

    function change(uint _roll , string memory _name) public {
        
        student memory new_student = student ({
            roll : _roll , 
            name : _name
        });

        s1 = new_student;

        
    }
}