pragma solidity ^0.4.0;

contract Voter
{
    uint []public votes;
    string[] public options;
    
    constructor(string[] _options) public{
        options=_options;
        votes.length = options.length;
    }
    
    function vote(uint option) public{
        votes[option] = votes[option]+1;
        
    }
    
    function getOptions() public view returns (string[]){
        return options;
    }
    
    function getVotes() public view returns(uint[])
    {
        return votes;
    }
}