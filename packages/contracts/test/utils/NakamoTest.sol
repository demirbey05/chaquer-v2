//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import { MudV2Test } from "@latticexyz/std-contracts/src/test/MudV2Test.t.sol";
import { IWorld } from "../../src/codegen/world/IWorld.sol";
import {TestUtils} from "./TestUtils.sol";



contract NakamoTest is MudV2Test{
    IWorld public world;
    address payable user1;
    address payable user2;
    address payable user3;
    address payable user4;
    address payable user5;
    address payable user6;


    function setUp() public virtual override {
        super.setUp();
        world = IWorld(worldAddress);
        user1 = TestUtils.getRandomUserAddress(keccak256(abi.encodePacked("user1")));
        user2 = TestUtils.getRandomUserAddress(keccak256(abi.encodePacked("user2")));
        user3 = TestUtils.getRandomUserAddress(keccak256(abi.encodePacked("user3")));
    }

  

}