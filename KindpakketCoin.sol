pragma solidity ^0.4.8;

contract KindpakketCoin {

    address owner;
    mapping (address => bool) public shopKeeper;
    mapping (address => uint256) public balanceOf;
    
    // the contract owner uses this function to fund wallets
    function fundWallet(address requester, uint256 amount) {
        if (msg.sender == owner) {
            balanceOf[msg.sender] -= amount;               
            balanceOf[requester] += amount;
        }
    }
    
    // the contract owner uses this function to approve shopkeepers
    function approveShop(address shopkeeper) {
        if (msg.sender == owner) {
            shopKeeper[shopkeeper] = true;
        }
    }
    
    // this function can only be called by shopkeepers to subtract from token holders
    function recievePayment(address from, uint256 value) {
        if (shopKeeper[msg.sender] == true) {
            balanceOf[from] -= value;               
            balanceOf[msg.sender] += value;
        }
    }
    
    // here we initialize the contract and set the initial supply
    function KindpakketCoin(uint256 initialSupply) {
        owner = msg.sender;
        balanceOf[msg.sender] = initialSupply;
    }
}