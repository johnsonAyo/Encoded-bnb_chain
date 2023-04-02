Level 0 - Return 42 (tutorial)
This level is really simple. Use the interface bellow to write a smart contract. Your contract should contain a function called solution that returns a uint8. In this case the function body logic is very simply as the answer is always 42.

Interface:
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution {
function solution() external pure returns (uint8);
}

Solution:
To solve we need write the function to return the correct answer. In this case we would just need to write return 42

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level_0_Solution {

    function solution() external pure returns(uint8){
        return 42; // The part you will be implementing
    }

}

Level 1 - Matrix Addition
Write a function that adds two matrices returns the result. To keep things simple the array sizes will be fixed sizes of 2x2 (uint256[2][2]). Take a look at Wikipedia if you need help understanding matrix addition. Your solution should implement the following interface:

interface Isolution1 {
function solution(
uint256[2][2] calldata x,
uint256[2][2] calldata y
) external pure returns (
uint256[2][2] memory
);
}

Level 2 - Sorting an Array
Write a function that sorts an array in ascending order and returns the result. The array will be a fixed of 10 but the contents random. Your solution should implement the following interface:

interface Isolution2 {
function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}
