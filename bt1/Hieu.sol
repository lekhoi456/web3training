// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract bai1 {

    uint public a;
    uint public b;

    function setValue(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }

    function sum() public view returns(uint) {
        return a + b;
    }

    function substract() public view returns(uint) {
        return a - b;
    }

    function multiple() public view returns(uint) {
        return a * b;
    }

    function divide() public view returns(uint) {
        return a / b;
    }

    function remainder() public view returns(uint) {
        return a % b;
    }

    
}