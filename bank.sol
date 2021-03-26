
// deploy and show you on ethereum blockchain network

// remix, contract metamask, ganache

// where is the contract - deployed on ganache
// How you are accessing the contract on Remix 
// User - Request on Remix IDE - Metmask - Ganache - Smart contract


pragma solidity 0.7.0;

contract bank {
    
    uint private balance;
    address private owner;
    
    constructor() {
        owner=msg.sender;
        balance=0;
    }
    
    modifier onlyOwner {
        require(owner==msg.sender);
        _;
    }
    
    function getBalance() public onlyOwner view returns(uint) {
        return(balance);
    }
    
    function depositMoney(uint m) public {
        balance+=m;
    }
    
    function withdrawMoney(uint m) onlyOwner public {
        if(balance>m) {
            balance-=m;
        }
    } 
}
