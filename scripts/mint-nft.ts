require('dotenv').config();
const contract = require("../artifacts/contracts/Nft.sol/MyNFT.json");
console.log(JSON.stringify(contract.abi));
const ethers = require('ethers');

// Get Alchemy API Key
const API_KEY = process.env.API_KEY;

// Define an Alchemy Provider
const provider = new ethers.AlchemyProvider('sepolia', API_KEY)