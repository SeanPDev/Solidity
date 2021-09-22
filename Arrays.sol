pragma solidity 0.7.5;

contract Arrays {
  int[] numbers; // Dynamically sized array
  int[10] numbers2; // Size 10 array
  int[3] numbers3 = [2, 5, 3]; // Initialize and set array with 3 values

  function addNumber(int _number) public {
    numbers.push(_number); // put a new number into the numbers array
    // .push doesn't exist for fixed-sized array. Must be dynamic
    // if using fixed size array, use numbers[index] = _number;
    // would also need an "id" added to the function input
  }

  function getNumber(uint _index) public view returns(int) { // using uint because arrays can't have a negative index value
    return numbers[_index];
    // This will return the value of the specified index of the array
  }

  function getNumbers(uint _index) public view returns(int[] memory) {
    return numbers; // This function will allow you to return the 
                    // entire array instead of just one index.
  }


}