pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/adoption.sol";

contract TestAdoption
{
    adoption Adop = adoption(DeployedAddresses.adoption());
    uint  expectedPetId = 8;
    address expectedOwner = address(this);

    function testadoptionReturningPetId() public{
    uint retId = Adop.adopt(expectedPetId);
    Assert.equal(retId,expectedPetId,"Adoption of the expected pet should match what is returned.");
    }
    function testGetAdopterAddressByPetId() public
    {
        address adopter = Adop.adopters(expectedPetId);
        Assert.equal(adopter,expectedOwner,"Owner of the expected pet should be this contract");
    }
    function testGetAdopterAddressByPetIdInArray() public {
     address[16] memory adopters = Adop.getAdopters();

     Assert.equal(adopters[expectedPetId], expectedOwner, "Owner of the expected pet should be this contract");
    }
}

