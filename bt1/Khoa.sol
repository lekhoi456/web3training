// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract CalculateNumbers {
    int public a; int public b;

    function setNumberValues(int _a, int _b) public {
        a = _a;
        b = _b;
    }
    
    function addTwoNumbers() public view returns(int) {
        return a + b;
    }

    function subtractTwoNumbers() public view returns(int) {
        return a-b;
    }
    
    function multiplyTwoNumbers() public view returns(int) {
        return a * b;
    }
    
    function divideTwoNumbers() public view returns(int) {
        return a / b;
    }

    function modulusTwoNumbers() public view returns(int) {
        return a % b;
    }
}