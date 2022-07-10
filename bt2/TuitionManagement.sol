// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

contract TuitionManagement {

    address _owner;
    uint256 maxStudent;
    uint256 price;
    uint256 totalReceive = 0;
    uint256 totalWithdraw = 0;
    uint256 public decimal = 18;
    uint256 public deadline; // https://www.unixtimestamp.com
    address payable public withdrawAddress;
    mapping(address => bool) public whitelist;
    uint256 totalWhitelist = 0;
    mapping(address => bool) public paidlist;
    uint256 totalPaidlist = 0;

    modifier onlyOwner() {
        require(msg.sender == owner(), "Ownable: caller is not the owner");
        _; // _ phai co khi viet modifier, sau khi thoa man yeu cau modifier se thuc hien code tiep theo cua function
    }

    modifier onlyWhitelist() {
        require(whitelist[msg.sender] == true);
        _;
    }

    constructor(uint256 _maxStudent, uint256 _price, uint256 _deadline) {
        _owner = msg.sender;
        withdrawAddress = payable(msg.sender);
        maxStudent = _maxStudent;
        price = _price;
        deadline = _deadline;
    }

    function owner() public view virtual returns(address) {
        return _owner;
    }

    // Them danh sach ghi danh
    function addWhitelist(address[] memory _whitelist) external onlyOwner {
        for (uint256 i = 0; i < _whitelist.length; i++) {
            address wl = _whitelist[i];
            if (whitelist[wl] == false) {
                ++totalWhitelist;
            }
            whitelist[wl] = true;
        }
    }

    // Xoa danh sach ghi danh
    function removeWhitelist(address[] memory _whitelist) external onlyOwner {
        for (uint256 i = 0; i < _whitelist.length; i++) {
            address wl = _whitelist[i];
            if (whitelist[wl] == true) {
                --totalWhitelist;
            }
            whitelist[wl] = false;
        }
    }

    // Thong ke
    function statistic() external view returns(uint256 _maxStudent,
                                               uint256 _totalWhitelist,
                                               uint256 _totalPaidlist,
                                               uint256 _price,
                                               uint256 _totalReceive) {
        return (maxStudent,
                totalWhitelist,
                totalPaidlist,
                price,
                totalReceive);
    }

    // Dong hoc phi
    receive() external payable onlyWhitelist {
        require(block.timestamp <= deadline
             && totalPaidlist <= maxStudent
             && paidlist[msg.sender] == false
             && msg.value == price);

        paidlist[msg.sender] = true;
        ++totalPaidlist;
        totalReceive += msg.value;
    }

    // Rut tien
    function withdraw(uint256 _amount) external payable onlyOwner {
        require(_amount <= totalReceive, "The amount must be less than or equal totalReceive");
        payable(msg.sender).transfer(_amount);
        totalWithdraw += _amount;
    }
}