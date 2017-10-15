pragma solidity ^0.4.2;


import 'zeppelin-solidity/contracts/token/StandardToken.sol';


contract SimpleStorage is StandardToken {

    string public name = 'cyan';

    string public symbol = 'cy';

    uint public decimals = 8;

    uint public INITAL_SUPPLY = 12000;

    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData;
    }

    // Constructor
    function SimpleStorage(){
        totalSupply = INITAL_SUPPLY;
        balances[msg.sender] = INITAL_SUPPLY;
    }

}
