require("@nomiclabs/hardhat-ethers");

module.exports = {
    solidity: "0.8.18",
    networks: {
        sepolia: {
            url: "https://sepolia.infura.io/v3/13d3d79020e54be2ba95f2308326155b",
            accounts: ["b54f924717d5ee14edff7f3153aa68143f33c6c898a59fdb3d3cdd9b12d9ec69"],
        },
    },
};
