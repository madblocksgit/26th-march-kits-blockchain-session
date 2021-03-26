// let's read the data from user 

// user - enter a name
// user -> contract using contract address and abi -> function -> a variable

// telling the IDE to go for this compiler version
pragma solidity 0.7.0;

// create a contract
contract kits {
    
    // create a state variable
    string private a;
    
    
    // function logic - contract function
    function getName(string memory b) public{
        a=b; // I can access private variable in this function
        // b is a local variable
    }
    
    // function logic is to retreive data stored in state variable
    function printName() public view returns(string memory) {
        return(a);
    }
}

// kits.getName("Madhu")
