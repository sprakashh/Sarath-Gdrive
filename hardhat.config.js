require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */

const INFURA_API_KEY="2a1ff8c793d3492da37081ff155e779c"
const SEPOLIA_PRIVATE_KEY="29be9ea3c1204d88565bd8fec571e8e9a5abe769250d00e3aa85433314ca387c"
module.exports = {
  solidity: "0.8.19",

  networks:{
    sepolia :
    {
      url:`https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
      accounts:[SEPOLIA_PRIVATE_KEY]
    }
  },

  paths:{
    artifacts:"./client/src/artifacts"
  }
};


