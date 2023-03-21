const Web3 = require("web3");

const humanReadableAbi = ["function mint(to, amount)"];

const contractAddress = "0x2ee55f26B7f28a740855C19418B3131df9FDfBCA";

const web3 = new Web3("https://testnet.infura.io/v3/your-project-id");

const contract = new web3.eth.Contract(humanReadableAbi, contractAddress);

const to = "0x1234567890123456789012345678901234567890"; // replace with the recipient's Ethereum address
const amount = 1000; // replace with the amount of tokens you want to mint

contract.methods
  .mint(to, amount)
  .send({ from: "0xYOURACCOUNTADDRESS", gas: 200000 })
  .then((receipt) => {
    console.log(receipt);
  })
  .catch((error) => {
    console.error(error);
  });
