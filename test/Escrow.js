const { expect } = require('chai');
const { ethers } = require('hardhat');

const tokens = (n) => {
    return ethers.utils.parseUnits(n.toString(), 'ether')
}

describe('Escrow', () => {

it('saves the addresses',async () => {
 const MOBOGOBBLER = await ethers.getContractFactory ('MOBOGOBBLER')
 MOBOGOBBLER = await MOBOGOBBLER.deploy()

 console.log(MOBOGOBBLER.address)
  })
})
