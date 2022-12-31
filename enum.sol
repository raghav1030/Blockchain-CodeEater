// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0 ;

enum user{
    allowed , not_allowed ,wait
}

contract Enum {
    user public u1 = user.allowed;
    uint public lottery = 1000;

    function check() public {
        if (u1 == user.allowed){
            lottery = 500;
        }
        else if ( u1 == user.not_allowed ){
            lottery = 1000;
        }
        else {
            lottery = 0;
        }
    }

        function change() public {
            u1 = user.wait;
        }
    
    function checkagain() public {
        if (u1 == user.allowed){
            lottery = 500;
        }
        else if ( u1 == user.not_allowed ){
            lottery = 1000;
        }
        else {
            lottery = 0;
        }
    }

}