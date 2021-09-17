pragma solidity 0.7.5;

contract HelloWorld {
    function hello() public pure returns(string memory) {
        return "Hello World";
    }
}

// public means it is accessible anywhere
// pure means it doesn't act outside the function, won't write or read to any other contract
// returns(string memory) returns the string to the caller and we have to use either memory or call data

