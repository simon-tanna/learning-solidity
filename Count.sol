pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

contract Counter {
    // contract code
    // creating a count variable
    uint public count = 0; 
    // this is a state variable. uint wil be on a positive integer
    // the public keyword allows the count variable to be displayed for free

    function incrementCount() public {
        // assigns variable and saves it back to the original variable
        // this is a write function as it adds it to the blockchain. it will cost gas+
        count++;
    }

}