// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;
contract FirstExam
{
    uint public firstNum;
    uint public secondNum;
 
    function firstNumSet(uint x) public
    {
        firstNum = x;
    }

    function secondNumSet(uint y) public
    {
        secondNum = y;
    }
 
    //add
    function add() view public returns (uint)
    {
        uint _sum = firstNum + secondNum;
        return _sum;
    }

    //subs
    function subs() view public returns (uint)
    {
        uint _subs = firstNum - secondNum;
        return _subs;
    }

    //multiply
    function multiply() view public returns (uint)
    {
        uint _multiply = firstNum * secondNum;
        return _multiply;
    }

    //division
    function division() view public returns (uint)
    {
        uint _division = firstNum / secondNum;
        return _division;
    }

    //remainder
    function remainder() view public returns (uint)
    {
        uint _remainder = firstNum % secondNum;
        return _remainder;
    }
}