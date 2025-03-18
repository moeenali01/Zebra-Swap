// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {CustomDex} from "../src/CustomDex.sol";
import "../src/Zebraswap1.sol";
import {Swap} from "../src/Zebraswap2.sol";

contract CounterScript is Script {
    CustomDex public customtoken;
    ZebraLiquidityNFT public swap1;
    Swap public swap2;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        
        customtoken = new CustomDex();
        console.log("Custom Token Contract deployed at:", address(swap1));

        
        swap1 = new ZebraLiquidityNFT();
        console.log("swap 1.0 deployed at:", address(swap1));

        
        swap2 = new Swap();
        console.log("swap 2.0 deployed at:", address(swap2));

        vm.stopBroadcast();
    }
}
