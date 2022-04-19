// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts@4.4.2/token/ERC20/ERC20.sol";


contract GGame is ERC20 {
    uint answer;
    uint8 count=0;
    address public admin;
    address public contractAddress;
    address public winner;
    event winners(address addr);
    
    constructor() ERC20('MToken', 'MTN') {
        _mint(address(this), 20000 * 10**18);
        admin = msg.sender;
        contractAddress = address(this);
        answer = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender)));
        answer = answer % 10 + 1;
    }
    function checkRand() public view returns(uint) {
        return answer;
    }

    function basicGuess(uint num) public payable {
        require(count<=2,"total number exceeded");
        require(winner!=msg.sender, "winner found!");
        
        count += 1;
        if(num == answer) {
            winner = msg.sender;
            emit winners(msg.sender);
            this.transfer(msg.sender, 100);
        } 
        
    }
}        
