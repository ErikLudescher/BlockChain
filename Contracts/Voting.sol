// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    address public owner;
    mapping(address => uint) public airdropAmounts; // Whitelisted users and their token amounts
    mapping(address => bool) public hasClaimed;    // Track whether a user has claimed their tokens

    event TokensClaimed(address indexed claimant, uint amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Add users to the whitelist with their airdrop amounts
    function addToWhitelist(address[] memory recipients, uint[] memory amounts) public onlyOwner {
        require(recipients.length == amounts.length, "Mismatched inputs");
        for (uint i = 0; i < recipients.length; i++) {
            airdropAmounts[recipients[i]] = amounts[i];
        }
    }

    // Users can claim their tokens
    function claimTokens() public {
        require(airdropAmounts[msg.sender] > 0, "No tokens to claim");
        require(!hasClaimed[msg.sender], "Tokens already claimed");

        uint amount = airdropAmounts[msg.sender];
        hasClaimed[msg.sender] = true;

        // Logic for transferring tokens would go here (e.g., ERC-20 transfer)
        // For simplicity, we'll emit an event instead
        emit TokensClaimed(msg.sender, amount);
    }

    // View the remaining tokens for a user
    function getAirdropAmount(address user) public view returns (uint) {
        return airdropAmounts[user];
    }
}
