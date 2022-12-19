*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FILTER_ACTIVE} =     css:[href="#/active"]
${FILTER_COMPLETED} =    css:[href="#/completed"]

*** Keywords ***
User select filter Active
    Click Element    ${FILTER_ACTIVE}

User select filter Completed
    Click Element    ${FILTER_COMPLETED}