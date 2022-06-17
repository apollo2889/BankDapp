// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Bank {
    address public bankOwner;
    string public bankName;
    mapping(address => uint256) public userBalance;

    constructor() {
        bankOwner = msg.sender;
    }

    function setBankName(string memory _name) external {
        require(
            msg.sender == bankOwner,
            "You must be the owner to set the name of bank"
        );
        bankName = _name;
    }

    function depositBalance() public payable {
        require(msg.value != 0, "You need to deposit some amount of money!");
        userBalance[msg.sender] += msg.value;
    }

    function withdrawBalance(address payable _to, uint256 _amount) public {
        require(
            _amount <= userBalance[msg.sender],
            "You have insuffient funds to withdraw"
        );
        userBalance[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

    function getUserBalance() external view returns (uint256) {
        return userBalance[msg.sender];
    }

    function getBankBalance() external view returns (uint256) {
        require(
            msg.sender == bankOwner,
            "You must be the owner of the bank to see all balances."
        );
        return address(this).balance;
    }
}
