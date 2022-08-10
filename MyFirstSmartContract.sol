// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFirstSmartContract {
    // Vacant
    // Occupied

    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    // modifier
    modifier onlyWhileVacant() {
        // Check Status
        require(currentStatus == Statuses.Vacant, "Currently Occupied...");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function bookRoom() public payable onlyWhileVacant costs(2 ether) {
        // Check Price
        // require(msg.value >= 2 ether, "Not enough ether provided"); // checks if a statement is true of false. if true subsequent lines of code will run. if false they won't

        currentStatus = Statuses.Occupied;
        // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}
