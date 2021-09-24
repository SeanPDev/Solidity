pragma solidity 0.7.5;

contract Bank {
    
    mapping(address => uint) balance;
    
    function addBalance(uint _toAdd) public returns (uint) {
        balance[msg.sender] += _toAdd;
        return balance[msg.sender];
    }
    
    function getBalance() public view returns (uint) {
        return balance[msg.sender];
    }
    
    function transfer(address recipient, uint amount) public {
        _transfer(msg.sender, recipient, amount); // call the private function from a public one
    }
    
    function _transfer(address from, address to, uint amount) private {
        // name internal/private functions with _
        balance[from] -= amount;
        balance[to] += amount;
    }
    
}