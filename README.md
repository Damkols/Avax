## Description

This contract is called ExampleContract, and it has two functions:

setStoredValue: This function allows the owner of the contract to set a new value for storedValue.

getStoredValue: This function allows anyone to read the current value of storedValue.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ExampleContract.sol). Copy and paste the following code into the file:

```javascript
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


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ExampleContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ExampleContract" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

DamKols

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
