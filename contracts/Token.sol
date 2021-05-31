  //SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.3;
import "hardhat/console.sol";

contract Token {
string public name = "Phoenix";
string public symbol="Phx";
uint256 public totalSupply = 1000;
mapping(address => uint256)  balances;
address public owner;

constructor ()  {
  msg.sender == owner ;
  balances[msg.sender] = totalSupply;
}

function transfer(address to , uint256 amount) external {
    console.log("sender balance is %s tokens" , balances[msg.sender]);
    console.log("Trying to send %s tokens %s", amount , to);
  require(balances[msg.sender] >= amount , "you don't have enough amount to transfer");
  balances[msg.sender] -= amount ;
  balances[to] += amount ;
}

function balanceOf(address account) external view returns (uint256) {
  return balances[account];
}

}
