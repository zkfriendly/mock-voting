// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import { Script } from "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { MockVoting } from "../src/MockVoting.sol";

contract MockVotingScript is Script {
    MockVoting public voting;

    function setUp() public { }

    function run() public {
        vm.startBroadcast();
        voting = new MockVoting();
        console.logAddress(address(voting));
        vm.stopBroadcast();
    }
}
