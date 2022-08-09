pragma solidity ^0.8.0;

contract Counter {
    // contract code
    // creating a count variable
    uint count; // this is a state variable. uint wil be on a positive integer

    function getCount() public { // public refers to visibility of the function. it means that it can be called outside the contract
        return count;
    }

}