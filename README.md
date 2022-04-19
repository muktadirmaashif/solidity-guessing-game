# solidity-guessing-game
A solidity smart contract implementing a simple guessing game.

### Description
1. No token required to play. 
2. Currently random number is generated using keccak256 hash. But true random number can be generated using Random.sol (inherited Chainlink VRF). Only constraint is Chainlink doesn't support all the testnets currently (e.g. Celo Alfajores). 
3. Player can guess the number between 1-10 three times. If the guess is right, sender adress will be rewarded Game Token (GTN). 

-----
Tested on Rinkeby (with Chainlink VRF), and Alfajores. 
