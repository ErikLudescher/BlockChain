require("@nomiclabs/hardhat-ethers");
require("dotentv").config();
module.exports = {
    solidity: "0.8.18",
    networks: {
        sepolia: {
            url: url,
            accounts: [privateKey],
        },
    },
};
