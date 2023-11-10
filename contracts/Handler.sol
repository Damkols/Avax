// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Handler {
    address public owner;
    uint number;

    constructor() {
        owner = msg.sender;
    }

    function checkOwner() public view returns (address) {
        require(msg.sender == owner, "Not the owner");
        return owner;
    }

    function newOwner(address _newOwner) public {
        if (msg.sender != owner) {
            revert("Not Owner");
        }
        owner = _newOwner;
    }

    function assertTest() public view {
        assert(number == 0);
    }
}