// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import {Test} from "forge-std/Test.sol";
import {StdCheats} from "forge-std/StdCheats.sol";
import {DeployBox} from "../script/DeployBox.s.sol";
import {UpgradeBox} from "../script/UpgradeProxy.s.sol";
import {BoxV1} from "../src/BoxV1.sol";
import {BoxV2} from "../src/BoxV2.sol";

contract DeployAndUpgradeTest is StdCheats, Test {
    DeployBox public deployBox;
    UpgradeBox public upgradeBox;
    address public OWNER = address(1);

    function setUp() public {
        deployBox = new DeployBox();
        upgradeBox = new UpgradeBox();
    }

    function testBoxWorks() public {
        address proxyAddress = deployBox.deployBox();
        uint256 expectedValue = 1;
        assertEq(expectedValue, BoxV1(proxyAddress).version());
    }

    function testDeploymentIsV1() public {
        address proxyAddress = deployBox.deployBox();
        uint256 expectedValue = 7;
        vm.expectRevert();
        BoxV2(proxyAddress).setNumber(expectedValue);
    }

    function testUpgradeWorks() public {
        address proxyAddress = deployBox.deployBox();

        BoxV2 box2 = new BoxV2();

        vm.prank(BoxV1(proxyAddress).owner());
        BoxV1(proxyAddress).transferOwnership(msg.sender);

        address proxy = upgradeBox.upgradeBox(proxyAddress, address(box2));

        uint256 expectedValue = 2;
        assertEq(expectedValue, BoxV2(proxy).version());

        BoxV2(proxy).setNumber(expectedValue);
        assertEq(expectedValue, BoxV2(proxy).getNumber());
    }
}