
### Solidity

To the contract [`Bootcamp.sol`](https://gist.github.com/extropyCoder/77487267da199320fb9c852cfde70fb1):

1. Add a variable to hold the address of the deployer of the contract;
2. Update that variable with the deployer's address when the contract is deployed;
3. Write an external function to return:
    - Address 0x000000000000000000000000000000000000dEaD if called by the deployer;
    - The deployer's address otherwise.

    

// SPDX-License-Identifier: None

pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;


    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }
}