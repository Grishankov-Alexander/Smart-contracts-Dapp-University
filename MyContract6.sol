pragma solidity 0.5.1;

import "./Math.sol";

library Math {
    function divide(uint256 a, uint256 b)
        internal
        pure
        returns(uint256)
    {
        require(b != 0);
        return a / b;
    }
}

contract MyContract {
    uint256 public value;
    uint256 public value2;
    
    function calculate(uint256 a, uint256 b) public {
        value = Math.divide(a, b);
        value2 = Math2.multiply(a, b);
    }
}
