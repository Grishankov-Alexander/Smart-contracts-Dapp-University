pragma solidity 0.5.1;

contract MyContract {
    string public constant value = "myValue";
    bool public myBool = true;
    uint public myUint = 23424242;  // 32 bytes (256 bits)
    int public myInt = -343434;  // 256 bits
    uint8 public myUint8 = 255;
    int8 public myInt8 = -128;
    
    enum State { Waiting, Ready, Active }
    State public state;
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    //Person[] public people;
    uint8 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    
    function addPerson(string memory firstName, string memory lastName) public {
        //people.push(Person(firstName, lastName));
        people[peopleCount] = Person(peopleCount, firstName, lastName);
        peopleCount++;
    }
    
    constructor() public {
        myBool = false;
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
    
    /*function get() public view returns(string memory) {
        return value;
    }*/
    
    /*function set(string memory _value) public {
        value = _value;
    }*/
}
