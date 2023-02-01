pragma solidity ^0.8.0;

contract ToDoList {
    struct Task {
        string description;
        bool completed;
    }

    Task[] public tasks;

    function addTask(string memory _description) public {
        tasks.push(Task(_description, false));
    }

    function completeTask(uint _taskId) public {
        tasks[_taskId].completed = true;
    }
}
