import { expect } from "chai";
import { ethers } from "hardhat";

describe("Token contract", function () {
  let Dogcoin, dogcoin, owner, addr1, addr2;

  beforeEach(async function () {
    Dogcoin = await ethers.getContractFactory("Dogcoin");
    [owner, addr1, addr2] = await ethers.getSigners();

    dogcoin = await Dogcoin.deploy();
    await dogcoin.deployed();
  });

  describe("_mint internal function", function () {
    it("should increase total supply in steps of 1000", async function () {
      const initialSupply = await dogcoin.totalSupply();
      await dogcoin._mint(owner.address, 1000);
      expect(await dogcoin.totalSupply()).to.equal(initialSupply.add(1000));
      await dogcoin._mint(owner.address, 2000);
      expect(await dogcoin.totalSupply()).to.equal(initialSupply.add(3000));
    });

    it("should only allow the owner to increase total supply", async function () {
      await expect(
        dogcoin.connect(addr1)._mint(addr2.address, 1000)
      ).to.be.revertedWith("Ownable: caller is not the owner");
    });

    it("should emit Transfer event with correct arguments", async function () {
      await dogcoin._mint(owner.address, 1000);
      const receipt = await dogcoin.getTransactionReceipt(receiptHash);
      const transferEvent = receipt.logs.find(
        (log) => log.event === "Transfer"
      );
      expect(transferEvent.args.from).to.equal(ethers.constants.AddressZero);
      expect(transferEvent.args.to).to.equal(owner.address);
      expect(transferEvent.args.value).to.equal(1000);
    });
  });
});
