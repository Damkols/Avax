// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionalityContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 _amount) public {
        require(msg.sender == owner, "Only the owner can deposit funds.");
        if (_amount == 0) {
            revert("Input cannot be zero.");
        }
        value += _amount;
    }

    function withdraw(uint256 _amount) public {
        require(msg.sender == owner, "Only the owner can withdraw funds.");
        assert(value >= _amount);
        value -= _amount;
    }
}
