*** Settings ***
Resource    ActionsSteps.robot
Resource    ../Objects/new_todo_input.robot
Resource    VerificationSteps.robot

*** Variables ***
${TODOMVC_URL} =     https://todomvc.com/examples/jquery/#/all

*** Keywords ***

User has TodoMVC app
    Open Browser  ${TODOMVC_URL}  chrome
    Wait until todo input visible
User has todo
    User create new todo
    User checks if new todo is listed