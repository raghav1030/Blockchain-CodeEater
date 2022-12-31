// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

contract etherTransfer{
    
    function payEther() public payable{

    }

    function getBalance() view public returns(uint){
        return address(this).balance;
    }





}