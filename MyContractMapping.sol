// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContractMapping {
    // Mappings
    // This is used to write data to the blockchain in key-value pairs
    // mapping(uint => string) names;
    // the uint is the datatype for the key. string is the datatype for the value
    // This is calling the struct object Book

    // constructor() public {
    //     names[1] = "Simon";
    //     names[2] = "Chantal";
    //     names[3] = "Xavi";
    // }

    mapping(uint256 => Book) public books;

    struct Book {
        string title;
        string author;
    }

    // _id, _title, _author are local variables and are defined by convention with the underscore prefix
    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        // books calls the name of the mapping defined in line 10
        books[_id] = Book(_title, _author);
    }

    // Nested mapping
    mapping(address => mapping(uint256 => Book)) public myBooks;

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        // global variable msg has value called sender. this will be the address in the myBooks mapping
        myBooks[msg.sender] [_id] = Book(_title, _author);
    }
}
