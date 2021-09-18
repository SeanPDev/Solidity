pragma solidity 0.7.5;

contract Constructor {
    string message; // declare a variable in contract scope(state variables), will contain _message when contract is run

    constructor(string memory _message) {
        message = _message; // Create a constructor to be created when the contract is run
    }

    function hello() public returns string(string memory) {
        return message;
    }
}