## Description

cContract FunctionalityContract : The contract is declared with the name FunctionalityContract. It contains state variables and functions.

State Variables:

address public owner: This state variable stores the address of the owner of the contract.

uint256 public value: This state variable stores an unsigned integer, representing a balance or value.

Constructor:

constructor(): This is the constructor of the contract, which is executed once when the contract is deployed. It initializes the owner state variable with the address of the account that deploys the contract (i.e., msg.sender).
deposit Function:

function deposit(uint256 \_amount) public: This function allows someone to deposit funds into the contract.

require(msg.sender == owner, "Only the owner can deposit funds.");: This line uses the require() statement to check if the sender of the transaction is the owner of the contract. If not, it reverts with the specified error message.

if (\_amount == 0) { revert("Input cannot be zero."); }: This checks if the input amount is zero. If it is, the function reverts with the specified error message.

value += \_amount;: If both conditions are met, the function increases the value state variable by the specified amount.

withdraw Function:

function withdraw(uint256 \_amount) public: This function allows the owner to withdraw funds from the contract.

require(msg.sender == owner, "Only the owner can withdraw funds.");: It uses require() to check if the sender is the owner. If not, it reverts with an error message.

assert(value >= \_amount);: This line uses assert() to ensure that the contract balance is greater than or equal to the withdrawal amount. If this condition is not met, it will trigger an assertion failure.

value -= \_amount;: If the conditions are met, the function subtracts the specified amount from the contract's balance.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., test.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile test.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "FunctionalityContract" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

DamKols

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
