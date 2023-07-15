pragma solidity ^0.8.0;

contract FunctionExample {
    uint public value;
    
    function getValue() public view returns(uint) {
        return value;
    }
    
    function setValue(uint newValue) public {
        value = newValue;
    }
    
    function pureFunction(uint x, uint y) public pure returns(uint) {
        return x + y;
    }
    
    function payableFunction() public payable {
        // Perform actions with the received Ether
    }
}

contract DerivedContract is FunctionExample {
    function derivedFunction() public pure returns(string memory) {
        return "This is a derived function";
    }
}
