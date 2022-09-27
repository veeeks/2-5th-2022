// SPDX-License-Identifier: GPL-3.0
//cerner_2tothe5th_2022
// Deploy and run the script at -   https://remix.ethereum.org/ 
pragma solidity >=0.7.0 <0.9.0;

contract greeting {
    string public name ;
    string public prefix = "Hi "; 
    constructor(string memory Firstname){
        name = Firstname;
    }
    function setName (string memory newName ) public {
        name = newName;
    } 
   function printGreetings () public view returns (string memory) {
       return string(abi.encodePacked(prefix , name));
   }
}
