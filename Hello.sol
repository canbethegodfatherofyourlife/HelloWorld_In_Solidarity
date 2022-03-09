// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract Hello{
    event Values(string oldStr,string newStr);  // Broadcast everyone in the network that this happened. 
    string public str;                          // Permanently in the blockachain 

    constructor(string memory  _str){           // When run the first time, this will be executed 
        str = _str;            
    }

    function update(string memory newMsg)public{
        string memory oldMsg = str;
        str = newMsg;
        emit Values(oldMsg, newMsg);
    }

    function getGreeting() public view returns(string memory){
        return string(abi.encodePacked("Hello ",str));    // To concatenate strings
    }

}