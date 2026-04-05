// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library MathLib {

    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "Underflow error");
        return a - b;
    }

    function multiply(uint a, uint b) internal pure returns (uint) {
        return a * b;
    }
}


// Contract using the library
contract Calculator {

    // Attach library to uint type
    using MathLib for uint;

    function subtract(uint a, uint b) public pure returns (uint) {
        return a.sub(b);
    }

    function multiply(uint a, uint b) public pure returns (uint) {
        return a.multiply(b);
    }
}