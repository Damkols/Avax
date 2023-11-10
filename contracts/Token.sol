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
