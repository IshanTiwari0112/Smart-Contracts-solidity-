pragma solidity ^0.8.7;

//SPDX-License-Identifier:MIT

contract Owned{
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Invalid permission");
        _; 
    }
}


contract InheritanceModifier is Owned{

    mapping(address => uint) public tokenBalance;

    //address owner;

    uint tokenPrice = 1 ether;
    
    constructor() public {
        //owner = msg.sender;
        tokenBalance[owner] = 100;
    }

    /*modifier onlyOwner() {
        require(msg.sender == owner, "Invalid permission");
        _; 
    }*/


        function createNewToken() public onlyOwner {
            //require(msg.sender == owner, "Invalid permission");
            tokenBalance[owner] ++;
        }

        function burnToken() public onlyOwner{
            //require(msg.sender == owner, "Invalid permission");
            tokenBalance[owner]--;
        }

}
