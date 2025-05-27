// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract MockVoting {
    uint256 public votesA;
    uint256 public votesB;

    function vote(uint256 choice) external {
        if (choice == 0) {
            votesA++;
        } else if (choice == 1) {
            votesB++;
        }
    }
}
