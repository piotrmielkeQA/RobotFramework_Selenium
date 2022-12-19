*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

*** Variables ***
${TODO_LIST} =    css:.todo-list
${TODO_COMPLETE_TOGGLE} =    css:.toggle
${TODO} =    css:.todo-list li
${TODO_DELETE} =    css:.destroy
${TODO_BY_INDEX} =     ${TODO}:nth-child(3)
${TODO_DELETE_BY_INDEX} =    ${TODO}:nth-child(3) .destroy     

*** Keywords ***
Check if todo is listed    
    [Arguments]     ${name}
    Element Text Should Be    ${TODO_LIST}    ${name}

Complete todo
    Select Checkbox    ${TODO_COMPLETE_TOGGLE} 

Check if todo completed    
    Element Attribute Value Should Be    ${TODO}    class    completed

Check if todo is NOT listed
    [Arguments]    ${name}
    Element Should Not Contain    ${TODO_LIST}    ${name}

Check if all todos are listed
    [Arguments]       @{names}
    
    ${actualNames} =    Get all displayed todo names for todos-list
    Lists Should Be Equal    ${actualNames}    ${names}

Delete todo
    [Arguments]    ${name}
    ${todoIndex} =  Find todo index by name    ${name}
    Log    Todo with name THE ONE has inde: ${todoIndex}    console=True
    ${todoByIndex} =    Replace String    ${TODO_BY_INDEX}    <INDEX>    ${todoIndex}
    ${todoDeleteByIndex} =    Replace String    ${TODO_DELETE_BY_INDEX}    <INDEX>     ${todoIndex}

    Mouse Over     ${todoByIndex}
    Click element    ${todoDeleteByIndex}

Find todo index by name
    [Arguments]    ${name}
    
    @{allTodos} =    Get all displayed todo names for todos-list
    ${index} =    Get Index From List    ${allTodos}   ${name}
    ${index} =   Evaluate    ${index} + 1
    ${index_str}    Convert To String    ${index}
    Return From Keyword    ${index_str}  

Get all displayed todo names for todos-list
    @{actualNames} =    Create List
    @{allTodos} =    Get WebElements    ${TODO}
    FOR    ${todo}    IN    @{allTodos}
        ${text} =    Get Text     ${todo}
        Append To List    ${actualNames}    ${text}
    END
    Return From Keyword    @{actualNames}    