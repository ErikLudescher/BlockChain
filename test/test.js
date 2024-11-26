const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Voting Contract", function () {
    it("Should deploy the contract and allow voting", async function () {
        const Voting = await ethers.getContractFactory("Voting");
        const voting = await Voting.deploy();

        await voting.deployed();

        console.log("Voting contract deployed at:", voting.address);

        // Example test for contract functionality (replace with your own logic)
        // Test specific functions or states here
    });
});
