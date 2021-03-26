// this contract is to update data only by owner

// owner - person who deploys this contract

// whenever contract gets deployed, constructor will be called


// owner - who deploys the contract
// user - who uses the contract, who calls the contract - owner, non-owner

// owner, non-owner

pragma solidity 0.7.0;

contract madhu {
    
    string private a;
    address private owner;
    
    constructor() {
        owner=msg.sender; // we are storing owner address in owner variable
    }
    
    modifier onlyOwner {
        require(owner==msg.sender); // user is not owner
        _;
    }
    
    function getName(string memory b) onlyOwner public {
        a=b;
    }
}
