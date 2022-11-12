// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {
    // SimpleStorage public simpleStorage;

    // function createSimpleStorage() public {
    //     simpleStorage = new SimpleStorage();
    // }

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public returns(SimpleStorage){
        SimpleStorage simpleStorage = new SimpleStorage();
        return simpleStorage;
    }

    function addSimpleStorage() public {
        simpleStorageArray.push(createSimpleStorage());
    }
}