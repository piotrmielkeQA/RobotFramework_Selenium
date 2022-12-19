*** Settings ***
Library    FakerLibrary


*** Keywords ***
Setup test variable todoName
    Set Test Variable    ${todoName}    ${randomName}

Setup test variable todosNames
    @{staticNames} =    Create List    Zadanie 1    Zadanie 2    Zadanie 3
    Set Test Variable    @{todosNames}    @{staticNames}