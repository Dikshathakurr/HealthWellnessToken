# HealthWellnessToken
# Token Supply
This Solidity code creates a token contract named HealthWellnessToken for tracking health activities. Users can log activities like calories burned and steps taken to earn tokens. These tokens can later be redeemed for services. The contract ensures users can't earn tokens unless they meet specific activity criteria. It also records each user's activities for reference.

# Description
This code creates a system where people earn digital tokens (like points) for healthy activities such as burning calories or taking steps. Users can log their health activities, like steps taken or calories burned, and earn tokens based on these actions. The contract automatically generates tokens as users achieve milestones in their activities. It also keeps a record of these activities and the tokens earned. Users can use their tokens to get services. The contract provides functions to check logged activities, exchange tokens for services, and log new health-related activities. 

# Key  Details
1)Token Name: HealthWellnessToken

2)Initial Supply: 1,000,000 tokens created and given to the person who deploys the contract

3)Token Symbol: HWTKN

# Activity Tracking:

Each user's health activities are logged using a structure called HealthActivity.The contract keeps a record of when activities like calories burned or steps taken occur for each user.

# How It Works:

1. Logging Health Activities:
   
   Function: logHealthActivity(uint caloriesBurned, uint stepsTaken)

   Users can log their health activities. If they burn 500+ calories, they earn 100 tokens. If they take 10,000+ steps, they earn 200 tokens.

2. Redeeming Tokens:
   
   Function: redeemTokens(uint amount, string memory service)

   Users can redeem their tokens for services. The specified amount of tokens is burned from their balance.

3. Transferring Tokens:
   
   Function: transferTo(address to, uint amount)

   Users can transfer tokens to another address.

4. Viewing Logged Activities
   Function: getUserActivities(address user)

   Users can see the health activities they or others have logged.


# Getting started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

1) Go to Remix IDE online.
2) create a new file by clicking on the "+" icon in the left-hand sidebar
3) Use version ^0.8.0. and import ERC20 from openzeppelin .
4) Log activities to earn tokens, redeem for services, transfer, and view activities.
5) check transaction details.
6) Save the file with a .sol extension.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile Healthwellness.sol" button.Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Once the contract is deployed, you can interact with it.

# Testing 
Compile the code to ensure it works correctly and simulate transactions to verify functionality.

# Author
Diksha Thakur

# License 
This"HealthwellnessToken" is licensed under the Mit license.







