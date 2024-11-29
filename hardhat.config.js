require("@nomicfoundation/hardhat-ethers");
require("dotenv").config(); // Correctly load .env

const url = process.env.SEPOLIA_URL;
const privateKey = process.env.PRIVATE_KEY;

module.exports = {
    solidity: "0.8.18",
    networks: {
        sepolia: {
            url: url,
            accounts: [privateKey],
        },
    },
};
