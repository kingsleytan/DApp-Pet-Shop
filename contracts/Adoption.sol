pragma solidity ^0.4.4;

contract Adoption {

//adopters is an array of Ethereum addresses, length is 16.
    address[16] public adopters;

   // Adopting a Pet
    function adopt(uint petId) public returns (uint) {
      require(petId >= 0 && petId <= 15);

      adopters[petId] = msg.sender;

      return petId;
    }

    //Retrieving the Adopters
    function getAdopters() public returns (address[16]) {
        return adopters;
    }
}
