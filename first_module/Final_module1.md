### DogCoin contract

1. In Remix, create a new file called `DogCoin.sol`.
2. Define the pragma compiler version to 0.8.18.
3. Before the pragma version, add a license identifier `// SPDX-License-Identifier: UNLICENSED.`
4. Create a contract called DogCoin.
5. Create a variable to hold the total supply, with an initial amount of 2 million.
6. Make a public function that returns the total supply. 7. Make a public function that can increase the total supply in steps of 1000. 8. Declare an `address` variable called `owner`. This address will be allowed to change the total supply.
7. Next, create a `modifier` which only allows an owner to execute certain functions.
8. Make your change total supply function `public`, but add your modifier so that only the owner can execute it.
9. Create a constructor to initialise the state of the contract and within the constructor, store the owner's address.
10. Create an event that emits the new value whenever the total supply changes. When the supply changes, emit this event.
11. In order to keep track of user balances, we need to associate a user's address with the balance that they have.
    a) What is the best data structure to hold this association?
    b) Using your choice of data structure, set up a variable called `balances` to keep track of the number of tokens that a user has. 14. We want to allow the balances variable to be read from the contract, there are 2 ways to do this. What are those ways? Use one of the ways to make your balances variable visible to users of the contract. 15. Now change the constructor, to give all of the total supply to the owner of the contract.
12. Now add a public function called `transfer` to allow a user to transfer their tokens to another address. This function should have 2 parameters: - the amount to transfer and - the recipient address
    Why do we not need the sender's address here?
    What would be the implication of having the sender's address as a parameter? 17. Add an `event` to the transfer function to indicate that a transfer has taken place, it should log the amount and the recipient address. 18. We want to keep a record for each user's transfers. Create a `struct` called `Payment` that stores the transfer amount and the recipient's address.
13. We want to have a payments array for each user sending the payment. Create a `mapping` which returns an array of Payment structs when given this user's address.

## Solution

The solidity Solution could be found in the Dogcoin.sol

11a. The best data structure that could hold this association is Mapping.
11.b The two ways to allow the balances variable to be read from the contract is by

1. Adding the public keyword to the balances variable
2. creating a view function that will read and return the balances variable from the contract

12a. We do not need to include the sender's address as a parameter in the transfer function because the function can be called by the sender directly. The sender's address can be obtained using the msg.sender global variable within the function.

12b. If we were to include the sender's address as a parameter, it would be redundant and potentially even harmful, as it would allow anyone to transfer tokens on behalf of another user by specifying their address as the sender. This could lead to security issues and confusion among users.
