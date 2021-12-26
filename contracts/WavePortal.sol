// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    uint256 totalWaveDonations;
    Donor[] public waveDonors;

    struct Donor {
        address donor;
        uint256 donation;
        bool donated;
        bool waitlist;
    }

    constructor() {
        console.log("Waves for days");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function joinDonationWaitlist() public {
        waveDonors.push(
            Donor({
                donor: msg.sender,
                waitlist: true,
                donated: false,
                donation: 0
            })
        );
        console.log("%s has joined the wait list!", msg.sender);
    }

    function donateWaves() public {
        // TODO add donation feature
        // waveDonors.push(Donor({ donor: msg.sender}));
        totalWaveDonations += 1;
        console.log("%s has donated!", msg.sender);
    }

    function getWaitlist() public view returns (Donor[] memory) {
        // console.log("Waitlist: %s", waveDonors);
        return waveDonors;
    }

    function getTotalDonations() public view returns (uint256) {
        console.log("Total donations: %d", totalWaveDonations);
        return totalWaveDonations;
    }
}
