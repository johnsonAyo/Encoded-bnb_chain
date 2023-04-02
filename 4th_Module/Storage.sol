pragma solidity ^0.8.0;

interface Isolution4 {
    function solution(uint256 value) external;
}

contract Solution4 {
    Isolution4 solution4;

    constructor(address solution4Address) {
        solution4 = Isolution4(solution4Address);
    }

    function saveToSlot3(uint256 value) public {
        solution4.solution(value);
    }
}
