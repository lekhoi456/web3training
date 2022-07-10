// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Demo {
    int a;
    int b;

    function setValues(int _a, int _b) public {
        a = _a;
        b = _b;
    }


    function add() public view returns (int){
        return a + b;
    }

    function subtract() public view returns (int){
        return a - b;
    }

    function multiply() public view returns (int){
        return a * b;
    }

    function divide() public view returns (int){
        return a / b;
    }

    function divideRemainder() public view returns (int){
        return a % b;
    }
}