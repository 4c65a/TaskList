// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract TodoList {
    uint public taskCount = 0;

    struct Task {
    uint id;
    string titulo;
    string descripcion;
  }

    mapping(uint => Task) public tasks;

  
    function createTask(string memory _titulo,string memory _descripcion) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount,_titulo,_descripcion);
  }

    function deleteTasks(uint _id) public {
        delete tasks[_id];
    }


}
