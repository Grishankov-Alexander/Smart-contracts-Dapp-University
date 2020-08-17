pragma solidity 0.5.1;

contract MyContract {
    uint8 public peopleCount = 0;
    mapping(uint8 => Person) public people;
    address owner;
    
    struct Person {
        uint8 _id;
        string _fName;
        string _lName;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
    
    function addPerson(
        string memory fName,
        string memory lName
        )
        public
        onlyOwner
    {
        people[peopleCount]._id = peopleCount;
        people[peopleCount]._fName = fName;
        people[peopleCount]._lName = lName;
        incrementCount();
    }
}
