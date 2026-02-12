// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract SimpleStorage {
    // favoriteNumber gets initalized to 0 if no value is given. 

    uint256 myfavoriteNumber; //0

    // uint256[] listFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array size can grow to any length. 
    //static, when you deffine the amount of values. 

    Person[] public listOfPeople;  //[] empty at default


    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;
    
    

    // Person public dev = Person(7, "Dev");
    // Person public David = Person(16, "David");
    // Person public Levi = Person(32, "Levi");


//     function update(uint256 _favoriteNumber, string memory _name) public {
//     myFreind = Person(_favoriteNumber, _name);
// }

    // function getPerson() public view returns(Person memory){
    //     return myFreind;

    // }
    

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
        
        
    }

    function retrieve() public view returns(uint256){
        return myfavoriteNumber;

    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function listOfPeopleLength() external view returns (uint256) {
    return listOfPeople.length;
}


}   

// Memeory vaiables can be changed, but call data though its temopory bu cannot be modified. 
