/fragment line - version solidity line written for
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract{
    string public MyString ="hello world";

    uint256 public Myint;

    function setMyint(uint _Myint) public{
        Myint = _Myint;
    }

    address public Myaddress;

    function setMyaddress(address _address) public{
        Myaddress = _address;
    }

    function getBalanceOfAddress() public view returns (uint){
        return Myaddress.balance;
    }


}
