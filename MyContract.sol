// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    // this variable value will be stored on the blockchain
    // this variable has scope within the smart contract and can be updated in functions within the smart contract

    // integers
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    int256 public myInt = -1;

    // strings
    string public myString = "Hello World";
    bytes32 public myBytes32 = "Hello World";

    // addresses
    address public myAddress = 0x10386EeF12292ca3790508B1f16FA8583592fB1B;

    // custom data types - struct
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    // create
    MyStruct public myStructObject = MyStruct(1, "Hello World");

    // Local Variables
    function getValue() public pure returns(uint) {
        // the value variable can only be read within the getValue function
        uint value = 1;
        return value;
    }
}