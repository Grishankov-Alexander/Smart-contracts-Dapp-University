pragma solidity 0.5.1;

contract MyContract {
    mapping (address => uint256) public balances;
    address payable wallet;
    
    constructor() public {
        wallet = msg.sender;
    }
    
    event purchased(
        address indexed buyer,
        uint256 amount
    );
    
    function() external payable {
        buyToken();
    }
    
    function buyToken() public payable {
        // buy a Token
        balances[msg.sender] += 1;
        // send ether to the wallet
        wallet.transfer(msg.value);
        emit purchased(msg.sender, 1);
    }
}
