*** Settings ***
Library     SeleniumLibrary
Resource    ../Objects/new_todo_input.robot
Resource    ../Objects/todos_list.robot
Resource    ../Objects/todo_filters.robot
Resource    ../Steps/VerificationSteps.robot
Resource    ../Data/RandomDataGenerator.robot


*** Keywords ***
User create new todo
    Setup test variable todoName
    Create todo    ${todoName}

User marks todo as completed
    Complete todo

User creates a few todos
    Setup test variable todosNames
    FOR     ${name}    IN    @{todosNames}
        Log    ${name}    console=True
        Create todo    ${name}
    END    
    
User can delete todo
    Delete todo    ${todoName}  

User can delete THE ONE
    Delete todo    THE ONE

User create THE ONE
    Create todo    THE ONE

     
    
    
   