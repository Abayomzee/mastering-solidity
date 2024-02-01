// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
/**
 * 0.8.8 is the compiler version and writing it like this
 * means we only want to use this solidity compiler version, 
 * but adding a ^ => ^0.8.7 means we can as well use a 
 * more new version of solidity i.e the code will still
 * run with versions higer than the above.
 * we can also specify version ranges like >=0.8.7 <0.9.0
 * meaning the code we work fine with compiler versions within the above range
 * NB. every line needs to end with a semicolon like 👇
 * pragma solidity 0.8.7;
*/

contract SimpleStorage { 
    /**
     * Everything inside this curly brackets is going to be the contents
     * of this contract SimpleStorage
     */
     uint256 public favoriteNumber;
     People[] public people;
     mapping(string => uint256) public nameToFavoriteNumber;
     // mapping(string => uint256) = data type
     // public = visibility
     //nameToFavoriteNumber = variable name

     struct People {
      uint256 favoriteNumber;
      string name;
     }

     function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
     }

     function retrive() public view returns(uint256){
        /**
        This type of functions does not require gas
        fee, because they do not manipulating the state
        of the blockchain any way, they are only returning
        a value, but they cost gas when called within
        another function that manipulates the state
        of the blockchain, i.e a function that is neither
        VIEW nor PURE
        *********************
        This is a view function, there are two keywords
        that can be used to denote a function that only
        read the blockchain state, they are VIEW and PURE,
        this functions disallows any modification of state,
        In addition, pure functions dont even allow to read
        from the blockchain, an example is written below.
        */
        return favoriteNumber;
     }

     function add() public pure returns (uint256) {
      return 1 + 1;
     }

     function addPerson(string memory _name, uint256 _favoriteNumber) public{
      nameToFavoriteNumber[_name] = _favoriteNumber; // This is basically just mapping the
      /* string _name to _favoriteNumber
      */

      people.push(People(_favoriteNumber, _name)); // This can be achieved in many ways, like below
      // People memory newPerson = People(_favoriteNumber, _name);
      // people.push(newPerson);

      /* memory, calldata and storage
      The keyword MEMORY is used to hold temporary varaibles that can't
      be modified while CALLDATA is used to hold temporary varaibles that can
      be modified.

      STORAGE is used to hole variables that are available to the
      smart contract and every external variables are assigned the
      STORAGE keyword by default
      */
     }
}