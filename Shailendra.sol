pragma solidity ^0.4.18;

contract Shailendra{
    
    string fname;
    uint age;
    address owner;
    
    //constructor
    function Shailendra() public{
     owner = msg.sender; // there nothing like msg.owner
    }
    
    event Instructor(string name, uint age);
    
    modifier onlyOwner{
        require(owner == msg.sender);
        _;
    }
    
    function setConstructor(string _name, uint _age) onlyOwner public{
        fname = _name;
        age = _age;
        Instructor(_name, _age);
    }
    
    function getConstructor() public constant returns (string, uint){
        return (fname, age);
        
    }
}