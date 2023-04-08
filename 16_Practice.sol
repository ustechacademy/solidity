// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Practice {
    /*  
        Write a Solidity function called findLargest that takes 
        an array of integers as input and returns the largest integer in the array.

        Test case: [5,6,8,9,25] -> Return:25
    */

    function findLargest(uint256[] memory arr) public pure returns (uint256) {
        uint256 largest = arr[0]; // 5
        for (uint256 i = 1; i < arr.length; i++) {
            if (arr[i] > largest) {
                largest = arr[i];
            }
        }

        return largest;
    }

    /*
        Write a Solidity function called calculateFactorial 
        that takes a positive integer as input and returns its factorial.

        5! = 5*4*3*2*1 -> 120
        6! = 6*5*4*3*2*1 -> 720 
    */

    function calculateFactorial(uint256 n) public pure returns (uint256) {
        uint256 result = 1;

        for (uint256 i = 2; i <= n; i++) {
            // += -= *=
            result *= i;
        }
        return result;
    }

    /* 

Create a struct called Person with the following properties:

name of type string
age of type uint256
height of type uint256
isMarried of type bool

Create a function called createPerson that takes the following parameters:

string name
uint256 age
uint256 height
bool isMarried

The function should create a new instance of Person using the input parameters and store it in an array called people.

Create a function called getPerson that takes an index (of type uint256) and returns the Person object stored at that index in the people array.

Finally, create a function called getPeople that returns the entire people array.
    
    
    */

    struct Person {
        string name;
        uint age;
        uint height;
        bool isMarried;
    }

    Person[] private people;

    function createPerson(string memory _name, uint _age, uint _height, bool _isMarried) public {
       Person memory person1 = Person(_name,_age,_height,_isMarried);
       people.push(person1);
    }

    function getPerson(uint index) public view returns(Person memory){
        return people[index];
    }

    function getPeople() private view returns(Person[] memory){
        return people;
    }


    /*
    Implement a Solidity smart contract for a TODO app. The smart contract should allow users to add new tasks, mark tasks as complete, and view the list of tasks.

The smart contract should have a Task struct with the following properties:

id (uint): unique identifier for the task
description (string): description of the task
isCompleted (bool): indicates whether the task is completed or not
The smart contract should have a mapping tasks that maps task IDs to their corresponding Task structs.

Implement a function createTask(string memory _description) that adds a new task with the given description. The function should assign a unique ID to the task and set isCompleted to false.

Implement a function completeTask(uint _taskId) that marks the task with the given ID as completed. The function should set the corresponding isCompleted property to true.

Implement a function getTask(uint _taskId) that returns the Task struct corresponding to the given task ID.

Implement a function getTasks() that returns an array of all the Task structs.

Bonus challenge: Implement a function deleteTask(uint _taskId) that deletes the task with the given ID from the tasks mapping and reorders the remaining tasks to fill the gap.
    
    
    
    */

}
