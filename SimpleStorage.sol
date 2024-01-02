/**
 * The commented line below is called the SPDX license identifier,
 * it is optional but some compilers will flag you a warning if you don't have one,
 * This is to make licensing and sharing of code a lot easier. check the link below
 * to know more about how software licensing work:
 * https://snyk.io/learn/what-is-a-software-license/
 * for this example we will be using the MIT license
 */

// SPDX-License-Identifier: MIT

/**
 * 0.8.19 is the compiler version and writing it like this
 * means we only want to use this solidity compiler version, 
 * but adding a ^ i.e ^0.8.19 means we can as well use a 
 * more new version of solidity i.e the code will still
 * run with versions higer than 0.8.19.
 * we can also specify version ranges like >=0.8.19 <0.9.0
 * meaning the code we work fine with compiler versions within the above range
 * NB. every line in solidity code needs to end with a semicolon(;)
*/
pragma solidity ^0.8.19;

/**
 * Now lets define a contract named SimpleStorage
 * contract is a keyword in solidity that tells the solidity that 
 * the next pieces of code is going to be a contract
 * You can think of a contract similar to a class in any
 * Oject Oriented Programming like Java or Javascript
 */

contract SimpleStorage { 
    /**
     * Everything inside this curly brackets is going to be the contents
     * of this contract SimpleStorage
     */

    constructor() {
        
    }
}