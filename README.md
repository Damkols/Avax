## Video Links

[Video 1](https://www.loom.com/share/71784ad1fcba4237abce31c314c22de7?sid=8e0a1f21-83f6-4749-9e53-b0ab4976f5b5)

[Video 2](https://www.loom.com/share/06cdbf4f010f45d9973ac0e64269a062?sid=50873f16-3523-4920-a059-0d996eaaaabd)

## Description

Functions
mint(address to, uint256 amount): This function allows the contract owner to mint new tokens and send them to the specified address. Only the contract owner can call this function. Attempting to mint tokens without ownership will result in a revert.

transfer(address to, uint256 amount): This function allows any user to transfer tokens to another address. It follows the standard ERC-20 transfer function.

burn(uint256 amount): This function allows any user to burn their own tokens, reducing the total supply. Users can call this function to reduce their token balance.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., KolsToken.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KolsToken is ERC20 {
    address public owner;

    constructor() ERC20("KolsToken", "KTK") {
        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public onlyOwner {
         require(msg.sender == owner, "You are not the Owner");
        _mint(to, amount);
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        return super.transfer(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile KolsToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "KolsToken" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

DamKols

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
