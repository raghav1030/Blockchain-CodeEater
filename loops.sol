// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <= 0.9.0 ;

contract Array{
    uint [3] public arr;

    uint public count = 0;

    // For Loop

    // function forLoop() public {
    //     for(uint i = count ; i < arr.length ; i++){
    //         arr[i] = count;
    //         count++ ;
    //     }
    // }

    // While Loop

    // function whileLoop() public {
    //     while(count < arr.length){
    //         arr[count] = count;
    //         count++;
    //     }
    // }

    function doWhileLoop() public {
        do{
            
            arr[count] = count+1;
                count++;
        }
        while(count < arr.length);
        
    }

}