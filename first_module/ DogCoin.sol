// SPDX-License-Identifier: UNLICENSED.

pragma solidity 0.8.18;

contract Dogcoin {
    uint256 totalSupply;
    address owner;
    event totalSupplyNotify(uint256);
    event transferNotify(uint256 amount, address recipient);

    constructor() {
        totalSupply = 2000000;
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

    modifier onlyOwner() {
        require(
            owner == msg.sender,
            "You do not have permission to execute this Action"
        );
        _;
    }

    mapping(address => uint256) balances;

    struct Payment {
        uint256 amount;
        address recipient;
    }

    mapping(address => Payment[]) payments;

    function addPayment(
        address user,
        uint256 amount,
        address recipient
    ) {
        Payment memory newPayment = Payment(amount, recipient);
        payments[user].push(newPayment);
    }

    function setBalance(address user, uint256 balance) public onlyOwner {
        balances[user] = balance;
    }

    function getBalance(address user) public returns (uint256) {
        return balances[user];
    }

    function transfer(uint256 amount, address recipient) public {
        require(balances[msg.sender] >= amount, "Insufficient Balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        addPayment(msg.sender, amount, recipient);
        emit transferNotify(amount, recipient);
    }

    function getTotalSupply() public returns (uint256) {
        return totalSupply;
    }

    function increaseTs() public onlyOwner {
        totalSupply = totalSupply + 1000;
        emit totalSupplyNotify(totalSupply);
    }
}
