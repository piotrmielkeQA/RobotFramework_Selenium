*** Settings ***
Test Setup    User has TodoMVC app
Test Teardown    Close Browser
Resource    ../Steps/ActionsSteps.robot
Resource    ../Steps/ActionsSteps.robot
Resource    ../Steps/PreconditionSteps.robot

*** Test Cases ***
User can complete a todo
    User has todo
    User marks todo as completed
    User check if completed todo is mark
        
User can filter Active todos
    User has todo
    User marks todo as completed
    User checks if completed todo is not visible on list Active

User can filter Completed todos
    User has todo
    User marks todo as completed
    User checks if completed todo is visible on list Completed