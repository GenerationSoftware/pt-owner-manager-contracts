// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "../Manageable.sol";

contract ManageableHarness is Manageable {
    event ReallyCoolEvent(address);

    constructor(address _initialOwner)
        Manageable()
        Ownable(_initialOwner) {}

    function protectedFunction() external onlyManager {
        // do admin priviledges things

        emit ReallyCoolEvent(msg.sender);
    }
}