/**
 *Submitted for verification at BscScan.com on 2023-03-30
 */

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/*
  interface Isolution1 {
    function solution(uint256[2] calldata firstArray, uint256[2] calldata secondArray) external pure returns (uint256[2] calldata finalArray);
  }
*/

contract Level_1_Solution {
    function solution(uint256[2][2] calldata x, uint256[2][2] calldata y)
        external
        pure
        returns (uint256[2][2] memory finalArray)
    {
        // Implement your solution here.

        uint256[2][2] memory result;
        for (uint256 i = 0; i < 2; i++) {
            for (uint256 j = 0; j < 2; j++) {
                result[i][j] = x[i][j] + y[i][j];
            }
        }
        return result;
    }
}
