pragma solidity ^0.8.15;
// SPDX-License-Identifier: MIT

contract SendMoney {

    uint public balanceReceived;
    address owner;

    bool public paused;

    constructor() public {
        owner = msg.sender;
    }

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawMoney() public{
        address payable to = payable(msg.sender);

        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }

    function sendMoney() public payable {

    }


    function withdrawALLmoney(address payable _to) public{
        require (msg.sender == owner, "YOu are not the owner");
        _to.transfer(address()this.balance);
    }
}
