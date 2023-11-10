## Description

Functions
checkOwner(): This function is a view function, which means it doesn't modify the contract's state. It allows anyone to check whether they are the owner of the contract. If the sender's address matches the owner address, it returns the owner's address; otherwise, it raises a "Not the owner" error.

newOwner(address \_newOwner): This function is used to change the owner of the contract. Only the current owner can call this function. If the sender is not the owner, it reverts and displays the error message "Not Owner." If the sender is the owner, the owner variable is updated with the new owner's address.

assertTest(): This function is a view function used for testing purposes. It checks if the number variable is equal to 0 and uses the assert statement to ensure that. If the condition is not met, it will raise an exception, terminating the execution of the function.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Handler.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Handler" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

DamKols

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
