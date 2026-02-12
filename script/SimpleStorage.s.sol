// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SimpleStorage} from "../src/SimpleStorage.sol";

import "forge-std/Script.sol";
contract SimpleStorageScript is Script {
    SimpleStorage public mySimpleStorage;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mySimpleStorage = new SimpleStorage();

        vm.stopBroadcast();
    }
}
