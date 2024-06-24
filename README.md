# HealthWellnessToken
# Message System
This Solidity code creates a token contract named HealthWellnessToken for tracking health activities. Users can log activities like calories burned and steps taken to earn tokens. These tokens can later be redeemed for services. The contract ensures users can't earn tokens unless they meet specific activity criteria. It also records each user's activities for reference.

# Description
This code creates a system where people can earn digital tokens, like points, for doing healthy activities such as burning calories or taking steps. By extending OpenZeppelin's ERC20 implementation, this Solidity contract "HealthWellnessToken," generates a token known as HWTKN. Users may track their health-related activities and receive tokens for steps completed or large calories burnt. Based on these actions, the contract mints tokens, keeps track of them, and lets users exchange tokens for services. It has features to examine logged activity, redeem tokens, and log health-related activities. Tokens are initially issued to the contract deployer.

# Contract Details
Token Name: HealthWellnessToken

Token Symbol: HWTKN

# Getting started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

1) Go to Remix IDE online.
2) create a new file by clicking on the "+" icon in the left-hand sidebar
3) Paste the HealthWellnessToken contract code.
4) Use the Solidity compiler in Remix IDE.
5) Deploy HealthWellnessToken .
6) Interact with Functions.
7) Input data and execute functions.
8) check transaction details and events.
9) Save the file with a .sol extension.

 # Requirement:
 1) The code starts by defining basic information .To utilize Solidity, use Solidity ~0.8.0.
 2) From OpenZeppelin v4.0.0, import ERC20.
 3) Set up the "HealthWellnessToken" (HWTKN) and provide the deployer one million tokens.
 4) Use logHealthActivity to track our actions and earn tokens based on how many steps we  take and how many calories you burn.
 5) To burn tokens for services, make the redeemTokens function available.
 6) To obtain user activities, create a getUserActivities function.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile Healthwellness.sol" button.Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Once the contract is deployed, you can interact with it. 


# Author
Diksha Thakur

# License 
This"HealthwellnessToken" is licensed under the Mit license.







