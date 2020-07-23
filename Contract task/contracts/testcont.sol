pragma solidity >=0.4.22 <0.7.0;


contract testcont {

    uint amount;
    uint value;
    
    constructor () public
    {
        amount = 0;
        value = 1000;
    }
    
    function getamount() public view returns(uint) {
        return amount;
    }
    function getvalue() public view returns(uint)
    {
        return value;
    }
    
    function send(uint am) public {
        amount = amount + am;
        value = value - am;
    }
}