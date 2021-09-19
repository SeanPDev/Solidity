pragma solidity 0.7.5;

contract LearningPure {
  string message;

  constructor(string memory _message) {
    message = _message;
  }

  //View means we can view items from other parts of the contract but 
  //cannot change them.

  //Pure means the function will not interact with any other parts of the
  //contract except for the function it is called. 

  //If you use neither pure nor view, you can use functions as normal and
  //modify different parts of the contract.

  function hello() public view returns(string memory) {
    return message;
  }

  function hellobasic() public pure returns(string memory){
    return "Hello, World!";
  }

  //No view/pure used.
  function hellonormal() public returns(string memory) {
    message = "Changed";
    return message;
  }
}