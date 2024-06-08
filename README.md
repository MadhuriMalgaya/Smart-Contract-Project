# Factorial Smart Contract
This Solidity program is a simple smart contract "Factorial" program using assert(), revert() and require()  that demonstrates Error handling functionality of the Solidity programming language. The purpose of the factorial program is to calculate the factorial of a given non-negative integer. In mathematics, the factorial of a non-negative integer 
n, denoted as n!, is the product of all positive integers less than or equal to 𝑛
 ```
For example:
0!= 1
1!=1
2!=2×1=2
3!=3×2×1=6
4!=4×3×2×1=24
 ```
# Description
# Features
Factorial Calculation: The contract allows users to calculate the factorial of a given non-negative integer. <br />
Input Validation: Input validation is enforced using the require statement, ensuring that only non-negative integers are accepted for factorial calculation. <br />
Internal Consistency Checks: The assert statement is employed to verify the correctness of internal calculations and prevent unexpected behavior due to arithmetic overflow. <br />
Error Handling: The revert statement is utilized for error handling, allowing the contract to gracefully handle exceptional conditions and revert state changes when necessary. <br />

# Getting Started
# Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/. <br />
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., factorial.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Factorial {
    uint public result;

    function calculateFactorial(int n) public returns (uint) {
        require(n >= 0, "Input must be a non-negative integer");

        result = 1;

        for (uint i = 1; i <= uint(n); i++) {
            assert(result * i / i == result); 
            result *= i;
        }

        return result;
    }

    function Revert() public pure {
        revert("This function always reverts");
    }
}

```
# Usage
Deploy Contract: Deploy the Factorial Smart Contract on an Ethereum-compatible blockchain network. <br />
<br />
Calculate Factorial: Call the calculateFactorial function, providing a non-negative integer as input to compute its factorial. <br />
<br />
Error Handling: Utilize the demoRevert function to trigger a transaction revert with a custom error message, showcasing the contract's error-handling capabilities.

# Authors
Madhuri Malgaya 
madhumalgaya@gmail.com

# License
This project is licensed under the MIT License - see the LICENSE.md file for details


