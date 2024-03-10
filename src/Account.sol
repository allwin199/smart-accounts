// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {EntryPoint} from "account-abstraction/contracts/core/EntryPoint.sol";
import {IAccount} from "account-abstraction/contracts/interfaces/IAccount.sol";

contract Account is IAccount {
    uint256 public count;

    struct UserOperation {
        address sender;
        uint256 nonce;
        bytes initCode;
        bytes callData;
        uint256 callGasLimit;
        uint256 verificationGasLimit;
        uint256 preVerificationGas;
        uint256 maxFeePerGas;
        uint256 maxPriorityFeePerGas;
        bytes paymasterAndData;
        bytes signature;
    }

    function validateUserOp(UserOperation calldata, /*userOp*/ bytes32, /*userOpHash*/ uint256 /*missingAccountFunds*/ )
        external
        returns (uint256 validationData)
    {
        return 0;
    }

    function execute() external {
        count++;
    }
}
