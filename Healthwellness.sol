// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract HealthWellnessToken is ERC20 {
    mapping(address => HealthActivity[]) private userActivities;
    struct HealthActivity {
        uint timestamp;
        uint caloriesBurned;
        uint stepsTaken;
    }

    event TokensEarned(address indexed user, uint amount);
    event TokensRedeemed(address indexed user, uint amount, string service);

    constructor() ERC20("HealthWellnessToken", "HWTKN") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint initial tokens to contract deployer
    }

    function logHealthActivity(uint caloriesBurned, uint stepsTaken) external {
        require(caloriesBurned > 0 || stepsTaken > 0, "Record at least one activity to proceed");

        // Calculate tokens earned based on activities
        uint tokensEarned = 0;

        if (caloriesBurned >= 500) {
            tokensEarned += 100;
        }
        if (stepsTaken >= 10000) {
            tokensEarned += 200;
        }

        require(tokensEarned > 0, "No activities meet the criteria for earning tokens");

        _mint(msg.sender, tokensEarned);
        emit TokensEarned(msg.sender, tokensEarned);

        // Record the activity
        userActivities[msg.sender].push(HealthActivity({
            timestamp: block.timestamp,
            caloriesBurned: caloriesBurned,
            stepsTaken: stepsTaken
        }));
    }

    function redeemTokens(uint amount, string memory service) external {
        require(balanceOf(msg.sender) >= amount, "Low balance");
        _burn(msg.sender, amount);
        emit TokensRedeemed(msg.sender, amount, service);
    }

    function getUserActivities(address user) external view returns (HealthActivity[] memory) {
        return userActivities[user];
    }

    function transferTo(address to, uint amount) public {
        transfer(to, amount);
    }
}
