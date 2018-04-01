pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleStorage.sol";

contract TestSimpleStorage {

  function testItStoresAValue() public {
    SimpleStorage simpleStorage = SimpleStorage(DeployedAddresses.SimpleStorage());

    // console.log(DeployedAddresses);

    simpleStorage.set(89);

    uint expected = 89;

    Assert.equal(simpleStorage.get(), expected, "It should store the value 89.");
  }

}
