pragma solidity ^0.8.0;

interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray)
        external
        returns (uint256[10] memory sortedArray);
}

contract Solution2 {
    function solution(uint256[10] calldata unsortedArray)
        external
        returns (uint256[10] memory sortedArray)
    {
        // Copy the input array to a new array
        uint256[10] memory arr = unsortedArray;

        // Sort the array in ascending order using bubble sort
        for (uint256 i = 0; i < arr.length - 1; i++) {
            for (uint256 j = 0; j < arr.length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // Swap the elements
                    uint256 temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }

        // Return the sorted array
        sortedArray = arr;
    }
}
