// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Lock {

    string public shape = "triangle"; // triangle, rectangle, square
    int16 public base;
    int16 public height;
    int16 public length;
    int16 public width; 

    modifier validateTriangle {
        require(height > 0 && base > 0, "Please provide the height and base values.");
        _;
    }

    modifier validateRectangle {
        require(width > 0 && length > 0, "Please provide the height and base values.");
        _;
    }

    modifier validateSquare {
        require(length > 0, "Please provide the height and base values.");
        _;
    }

    function setShape(string memory _shape) public {
        shape = _shape;
    }

    function setBase(int16 _value) public {
        base = _value;
    }

    function setHeight(int16 _value) public {
        height = _value;
    }

    function setLength(int16 _value) public {
        length = _value;
    }

    function setWidth(int16 _value) public {
        width = _value;
    }

    function calculateTriangle() public validateTriangle view returns(int16) {
       int16 result = (height * base) / 2; 
       return result;
    }

    function calculateRectangle() public validateRectangle view returns(int16) {
       int16 result = width * length; 
       return result;
    }

    function calculateSquare() public validateSquare view returns(int16) {
       int16 result = length ** 2; 
       return result;
    }

}
