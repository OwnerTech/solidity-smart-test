/*
	Arte Ebrahimi
	Solidity Test Contract
	8/4/17

	Send and receive basic tokens.
*/

pragma solidity ^0.4.8;

contract testTokens {

	address public owner;

	mapping (address => uint) balances;

	function testTokens() {
		owner = msg.sender;
		balances[owner] = 1500;
	}
	
	function sendToken(address recip, uint amt) returns (bool _succ) {
	    if (balances[msg.sender] >= amt) {
	        balances[recip] += amt;
	        balances[msg.sender] -= amt;
	        return true;
	    }
	    
	    return false;
	}

	function getBalance() public constant returns (uint _bal)
	{
		return balances[msg.sender];
	}
	
}