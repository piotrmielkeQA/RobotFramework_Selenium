*** Settings ***
Test Setup    User has TodoMVC app
Test Teardown    Close Browser
Resource    ../Steps/ActionsSteps.robot
Resource    ../Steps/ActionsSteps.robot
Resource    ../Steps/PreconditionSteps.robot

Library    Process

*** Test Cases ***
User can delete todo
    User has todo
    User can delete todo
    User checks if delete todo is NOT listed

User can delete THE ONE
    User creates a few todos
    User create THE ONE
    User creates a few todos
    Sleep    5s
    User can delete THE ONE