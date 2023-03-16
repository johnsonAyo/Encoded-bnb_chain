// SPDX-License-Identifier: MIT

import { expect } from "chai";
import { ethers } from "hardhat";

describe("BadgerNFT", function () {
  let badgerNFT;

  beforeEach(async function () {
    const BadgerNFT = await ethers.getContractFactory("BadgerNFT");
    badgerNFT = await BadgerNFT.deploy("BadgerNFT", "BGR");
    await badgerNFT.deployed();
  });

  it("should mint a new NFT", async function () {
    const [owner, recipient] = await ethers.getSigners();
    const tokenId = 1;

    await badgerNFT.connect(owner).mint(recipient.address, tokenId);
    const ownerOfToken = await badgerNFT.ownerOf(tokenId);

    expect(ownerOfToken).to.equal(recipient.address);
  });
});
