// test/SimpleStorage.t.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage private simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function test_InitialFavoriteNumberIsZero() public view {
        assertEq(simpleStorage.retrieve(), 0);
    }

    function test_StoreAndRetrieve() public {
        uint256 expected = 123;
        simpleStorage.store(expected);
        assertEq(simpleStorage.retrieve(), expected);
    }

    function test_AddPerson_UpdatesArrayAndMapping() public {
        string memory name = "Dev";
        uint256 fav = 7;

        simpleStorage.addPerson(name, fav);

        // mapping updated
        assertEq(simpleStorage.nameToFavoriteNumber(name), fav);

        // array updated
        (uint256 storedFav, string memory storedName) = simpleStorage.listOfPeople(0);
        assertEq(storedFav, fav);
        assertEq(storedName, name);

        assertEq(simpleStorage.listOfPeopleLength(), 1); // requires helper OR remove this line
    }
}
