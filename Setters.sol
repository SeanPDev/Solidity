pragma solidity 0.7.5;

contract Setters {
  int number;

  function getNumber() public view returns(int) {
    return number;
  }

  function setNumber(int _number) public { // _variable name is used for input variables (this is a convention)
    number = _number; // Capture _number and place it in number. Function
                      // is not pure or view because we need to modify

  }
}