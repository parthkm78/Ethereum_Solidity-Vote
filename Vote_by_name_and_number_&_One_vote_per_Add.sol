pragma solidity ^0.4.0;

//This programe support vote both by name & Number
pragma experimental ABIEncoderV2;
contract Voter
{
    struct OptionPos{
        uint pos;
        bool exists;
    }
    
    // Count the votes
    uint []public votes;
    string[] public options;
    // Check account has already voted or not
    mapping(address=>bool) hasVoted;
    //check vote for the name is exists or not
     mapping(string=>OptionPos) posOfOption;
    
    constructor(string[] _options) public{
        options=_options;
        votes.length = options.length;
        for(uint i=0;i<options.length;i++)
        {
            OptionPos memory op = OptionPos(i,true);
            string memory name = options[i];
            posOfOption[name] = op;
        }
    }
    function vote(string name)public{
        require(!hasVoted[msg.sender],"Account has already voted");
        //Create meomry variable meana temprary variables
        OptionPos memory posOp = posOfOption[name];
        //CHeck option is valid or not
        require(posOp.exists,"Option is invalid");
        votes[posOp.pos] = votes[posOp.pos]+1;
        // marked account has already voted
        hasVoted[msg.sender] = true;
              
    }
    
    function vote(uint option) public{
        require(option >= 0 && option < options.length, "Invlid option");
        require(!hasVoted[msg.sender],"Account has already voted");
        
        votes[option] = votes[option]+1;
        hasVoted[msg.sender]=true;
    }
    
    function getOptions() public view returns (string[]){
        return options;
    }
    
    function getVotes() public view returns(uint[])
    {
        return votes;
    }
}