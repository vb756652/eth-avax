pragma solidity ^0.8.0;

contract AdminAccessControl {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can access this function.");
        _;
    }

    // Function that can be accessed only by the admin
    function adminFunction() public onlyAdmin {
        // Perform admin-specific actions here
    }

    // Example function that can be accessed by any user
    function publicFunction() public {
        // Perform actions that can be accessed by any user here
    }
}
