pragma solidity 0.7.5;

contract Loops {
    function count(int number) public pure returns(int) {
        //int i = 0;
        //while(i < 10) {
           // number++;
           // i++;    
       // }
        //return number;
        
        for(int j = 0; j<10; j++) {
            number++;
        }
        return number;
        
        
    }
}