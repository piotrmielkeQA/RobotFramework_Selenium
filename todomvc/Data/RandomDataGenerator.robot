*** Settings ***
Library    FakerLibrary


*** Keywords ***
Setup test variable todoName
    ${randomName} =    Sentence
    Set Test Variable    ${todoName}    ${randomName}

Setup test variable todosNames
    ${nb} =    Random Int    min=2    max=5
    @{randomNames} =    Sentences    nb=${nb}
    Set Test Variable    @{todosNames}    @{randomNames}