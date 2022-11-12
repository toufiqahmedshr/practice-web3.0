// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favNum;

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    function retrieve() public view returns(uint256) {
        return favNum;
    }

    struct People {
        string name;
        uint256 favNum;
    }

    People[] public peoples;

    mapping(string => uint256) public nameToFavNum;

    function addPerson(string calldata _name, uint256 _favNum) public {
        peoples.push(People({name: _name, favNum: _favNum}));
        nameToFavNum[_name] = _favNum;
    }

    // function addPerson(string calldata _name, uint256 _favNum) public {
    //     People memory person = People({name: _name, favNum: _favNum});
    //     peoples.push(person);
    //     nameToFavNum[_name] = _favNum;
    // }
}