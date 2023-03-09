# Block Explorer

We ll use the main net block explorer to find
<img width="1432" alt="Screenshot 2023-03-09 at 4 44 24 AM" src="https://user-images.githubusercontent.com/36278808/223918193-26bd8b51-9709-4757-9367-641e37f7f9e8.png">

1. How many users are holding the pancake swap token 'cake' ?
2. Approximately, how many unique addresses are there ?
3. Who validated the first block after the genesis block ?
4. Roughly how many transactions are pending
5. Which contract is consuming most gas ?
6. How much gas is needed to have a transaction get in a block within 5 10 s ?
7. What is special about this transaction 0x1bfbff8411ed44e609d911476b0d35a28284545b690902806ea0a7ff0453e931

NB: All these are findings are done realtime on the blockchain explorer and are subject to change and can be checked on the blockchain explorer at any time.

# Explanation

To find out how many users are holding the PancakeSwap token using the main net blockchain explorer, We' ll Go to the PancakeSwap website and find the contract address of the PancakeSwap token. The contract address is [`0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82`](https://bscscan.com/address/0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82)

then we ll navigate to the blockchain explorer such as BscScan (https://bscscan.com/) and enter the PancakeSwap contract address in the search bar.

Once we are on the PancakeSwap token contract page, we will see a section called "Holders". This section will show us the number of unique addresses that are currently holding the PancakeSwap token.

1. 1,332,229 users are holding pancake swap token 'cake'
2. 1,332,229 unique addresses
3. The first block after the Genesis block in the Bitcoin blockchain was validated by Satoshi Nakamoto, the unknown person or group of people who created Bitcoin and authored the original Bitcoin whitepaper. This block is known as Block 1 or the "genesis block" and was mined on January 3, 2009.
4. The amount of gas needed to have a transaction included in a block within 5-10 seconds will depend on several factors, such as the current network congestion, gas price, and block size. Generally, the higher the gas price you set, the faster your transaction will be processed and included in a block.

   Assuming normal network congestion, to have a transaction included in a block within 5-10 seconds, you would need to set a gas price that is    significantly higher than the current average gas price.

   To have your transaction included within 5-10 seconds, you may need to set a gas price of 100 Gwei or higher. However, this is just an estimate and actual results may vary depending on network conditions at the time of your transaction. Additionally, setting a very high gas price can result in a more expensive transaction fee, so it's important to consider the tradeoff between speed and cost.

7. This is the transaction hash of the PancakeSwap contract created 684 days 19 hrs ago (Apr-23-2021 08:12:25 AM +UTC)
