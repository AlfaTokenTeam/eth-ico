pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ETH is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ETH(address _owner)  UpgradeableToken(_owner) {
    name = "ETH";
    symbol = "ETH";
    totalSupply = 500000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}