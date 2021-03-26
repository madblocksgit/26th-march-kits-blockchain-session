// you have to read data from user
// the value of a and the value of b, value called choice

// choice - 1 - Addition
// choice - 2 - Sub
// choice - 3 - Multiplication
// choice - 4 - Division

// a- 10, b- 20, choice = 2
// a-b = 10-20 = -10

pragma solidity 0.7.0;

contract test {
    
    int private a;
    int private b;
    int private choice;
    
    // function to enter values
    function getValues(int m, int n, int p) public {    
        a=m;
        b=n;
        choice=p;
    }
    
    function getResult() public view returns(int) {
        if(choice==1) {
            return(a+b);
        } else if(choice==2) {
            return(a-b);
        } else if(choice==3) {
            return(a*b);
        } else if(choice==4) {
            return(a/b);
        }
    }
}
