// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MyContract {
    uint public myNumber; // public state variable
    string private myString; // private state variable
    bool internal myFlag; // internal state variable

    // Used to initialize state variables
    constructor() {
        myNumber = 42;
        myString = "Hello, World!";
        myFlag = true;
    }

    // functions
    function setNumber(uint _newNumber) public {
        myNumber = _newNumber;
    }

    function setNumberExternal(uint _newNumber) external {
        myNumber = _newNumber;
    }

    function setNumberPublic(uint _newNumber) public {
        myNumber = _newNumber;
    }

    function setNumberInternal(uint _newNumber) internal {
        myNumber = _newNumber;
    }

    function setNumberPrivate(uint _newNumber) private {
        myNumber = _newNumber;
    }

    // visibility quantifiers
    // External - Can only be accessed outside of this contract
    function myFunction() external {
        // Function logic
    }

    // Public - Can be accessed both from outside and within this contract
    function myFunction() public {
        // Function logic
    }

    // Internal - Can only be accessed from within this contract and contracts derived from this contract
    function myFunction() internal {
        // Function logic
    }

    // Private - Can only be accessed only from within this contract
    function myFunction() private {
        // Function logic
    }
}