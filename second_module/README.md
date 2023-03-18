# Basic Sample badger coin test

the test shows that the1.

1. The total supply is initially 1000000
2. That the number of decimals is 18
3. The balanceOf function returns the correct result
4. The transfer function works correctly
5. Test that an error is produced if a transfer is created with an
   insufficient balance

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

This code defines a describe block that groups together all of the tests for the BadgerCoin contract. In the beforeEach function, we create a new instance of the BadgerCoin contract and assign it to the badgerCoin variable. We also define two variables owner and addr1 which represent Ethereum addresses. The owner address is the deployer of the contract and has an initial balance of 1000000 BadgerCoins.

Each it block represents a single test case. The first test checks that the total supply is initially 1000000. The second test checks that the number of decimals is 18. The third test checks that the balanceOf function returns the correct balance for the owner address. The fourth test checks that the transfer function works correctly by transferring 1000 BadgerCoins from the owner to addr1. The fifth test checks that an error is produced if a transfer is created with an insufficient balance by attempting to transfer an amount greater than the owner's balance.
