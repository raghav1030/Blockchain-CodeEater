// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <= 0.9.0 ;

contract Demo{

    string [] public students = ['Raghav' , 'Sanya' , 'Kartik' , 'Vishesh' ];
    
    function memo() public view{
        string[] memory s1 = students;
        s1[0] = 'Yukti' ;
    }

    function stor() public {
        string [] storage s1 = students;
        s1[0] = 'Yukti' ;
    }
    
}