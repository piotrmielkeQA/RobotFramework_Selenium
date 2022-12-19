*** Settings ***
Test Teardown    Close Browser
Resource    ../Steps/ActionsSteps.robot
Resource    ../Steps/PreconditionSteps.robot
Resource    ../Steps/VerificationSteps.robot



*** Test Cases ***
User can create new to do 
    User has TodoMVC app
    User has todo
    User checks if new todo is listed

User can create a few todos
    User has TodoMVC app
    User creates a few todos
    User checks if all todos are listed







    

    