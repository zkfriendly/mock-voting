// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import { Test } from "forge-std/Test.sol";
import { MockVoting } from "../src/MockVoting.sol";

contract MockVotingTest is Test {
    MockVoting public voting;

    function setUp() public {
        voting = new MockVoting();
    }

    function testVoteAShouldIncreaseVoteA() public {
        voting.vote(0);
        uint256 countA = voting.votesA();
        uint256 countB = voting.votesB();
        assertEq(countA, 1);
        assertEq(countB, 0);
    }

    function testVoteBShouldIncreaseVoteB() public {
        voting.vote(1);
        uint256 countA = voting.votesA();
        uint256 countB = voting.votesB();

        assertEq(countA, 0);
        assertEq(countB, 1);
    }
}
