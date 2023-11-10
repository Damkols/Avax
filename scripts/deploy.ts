import { ethers } from "hardhat";

async function main() {
 const errorhandling = await ethers.deployContract("Handler");

 await errorhandling.waitForDeployment();

 console.log(`ErrorHandler deployed to ${errorhandling.target}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
 console.error(error);
 process.exitCode = 1;
});
