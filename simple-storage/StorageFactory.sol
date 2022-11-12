// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimpleStorage() public {
        simpleStorage = new SimpleStorage();
    }
}