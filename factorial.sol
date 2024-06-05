
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Factorial {
    uint public result;

    function calculateFactorial(int256 n) public returns (uint256) {
        
        require(n >= 0, "Input must be a non-negative integer");

        if (n == 0) {
            result = 1;
            return result;
        }

        result = 1;

        for (uint256 i = 1; i <= uint256(n); i++) {
            assert(result * i / i == result); 
            result *= i;
        }

        return result;
    }

    function Revert() public pure {
        revert("This function always revert");
    }
}

