pragma solidity >=0.4.22 <0.7.0;

contract softwareRelease{
    address public agent;
    string public date; //agreed date to release software
    mapping (address => string) public business_link;
    mapping (address => string) public package_link;
    //string private business_link = "https://www.icloud.com/";
    //string private package_link = "https://www.google.com/drive/";
    
    constructor() public {
        agent = msg.sender;
    }
    
    // determine if it is the escrow agent
    modifier isAgent{
        require(msg.sender == agent, "You are not the escorw agent!");
        _;
    }
    
    // check if it is the agreed date
    modifier checkDate(string memory date_value){
        require(keccak256(abi.encodePacked((date_value))) == keccak256(abi.encodePacked((date))), "Invalid Date!");
        _;
    }
    
    // set the date to release software
    function setDate(string memory value1) public isAgent {
        date = value1;
    }
    
    // set the link of business information
    function setBILink(string memory value2) public isAgent {
        business_link[msg.sender] = value2;
    }
    
    // set the link of software package
    function setSPLink(string memory value3) public isAgent {
        package_link[msg.sender] = value3;
    }
    
    // get the date to release software
    function getDate() public view returns (string memory) {
        return date;
    }
    
    // release the link of business information
    function releaseBILink(address receiver, string memory releaseDate) public checkDate(releaseDate) {
        business_link[receiver] = business_link[msg.sender];
    }
    
    // release the link of software package
    function releaseSPLink(address receiver, string memory releaseDate) public checkDate(releaseDate) {
        package_link[receiver] = package_link[msg.sender];
    }
}
