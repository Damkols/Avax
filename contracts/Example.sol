// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public storedValue;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setStoredValue(uint256 newValue) public onlyOwner {
        storedValue = newValue;
    }

    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }
}
