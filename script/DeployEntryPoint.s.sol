// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";
import {EntryPoint} from "account-abstraction/contracts/core/EntryPoint.sol";

contract DeployEntryPoint is Script {
    EntryPoint entryPoint;

    function run() external {
        vm.startBroadcast();
        entryPoint = new EntryPoint();
        vm.stopBroadcast();
    }
}
