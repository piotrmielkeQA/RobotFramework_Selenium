*** Settings ***
Resource     ../Objects/todos_list.robot
Resource     ../Objects/todo_filters.robot

*** Keywords ***
User checks if new todo is listed
    Check if todo is listed    ${todoName}

User check if completed todo is mark
    Check if todo completed

User checks if completed todo is not visible on list Active
    User select filter Active
    Check if todo is NOT listed    ${todoName}

User checks if completed todo is visible on list Completed
    User select filter Completed
    Check if todo is listed     ${todoName}  

User checks if all todos are listed
    Check if all todos are listed    @{todos_names}

User checks if delete todo is NOT listed
    Check if todo is NOT listed    ${todoName}