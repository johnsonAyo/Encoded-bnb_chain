// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface Isolution3 {
    function solution(address addr) external view returns (uint256 codeSize);
}

contract Solution3Caller {
    Isolution3 public solutionContract;

    constructor(address _solutionContract) {
        solutionContract = Isolution3(_solutionContract);
    }

    function getCodeSize(address addr) public view returns (uint256) {
        return solutionContract.solution(addr);
    }
}
