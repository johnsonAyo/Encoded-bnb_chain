const { expect } = require("chai");

describe("Dogcoin", function () {
  let dogCoin;

  beforeEach(async function () {
    const BadgerCoin = await ethers.getContractFactory("Dogcoin");
    dogCoin = await dogCoin.deploy();
    await dogCoin.deployed();
  });

  it("should have total supply of 1000000", async function () {
    dogCoin.increaseTs();
  });

  it("should have 18 decimals", async function () {
    expect(await badgerCoin.decimals()).to.equal(18);
  });

  it("balanceOf should return the correct balance", async function () {
    expect(await badgerCoin.balanceOf(owner.address)).to.equal(1000000);
  });

  it("transfer should work correctly", async function () {
    const initialBalance = await badgerCoin.balanceOf(owner.address);
    await badgerCoin.transfer(addr1.address, 1000);
    expect(await badgerCoin.balanceOf(owner.address)).to.equal(
      initialBalance - 1000
    );
    expect(await badgerCoin.balanceOf(addr1.address)).to.equal(1000);
  });

  it("should revert transfer with insufficient balance", async function () {
    const initialBalance = await badgerCoin.balanceOf(owner.address);
    await expect(
      badgerCoin.transfer(addr1.address, initialBalance + 1)
    ).to.be.revertedWith("ERC20: transfer amount exceeds balance");
    expect(await badgerCoin.balanceOf(owner.address)).to.equal(initialBalance);
  });
});
