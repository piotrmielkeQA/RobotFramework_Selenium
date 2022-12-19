*** Settings ***   
Library    SeleniumLibrary 
Library    Browser
Test Setup    Open Browser  ${exercise2_URL}  chrome
Test Teardown     Close Browser      

*** Variables ***
${exercise2_URL} =    https://qbek.github.io/selenium-exercises/pl/check_boxes.html 
${red_color} =    css:[name="red"]
${blue_color} =    css:[name="blue"]
${mixed_color} =    css=#light
${comment_field} =    css:#text
${test_checkbox} =    css:.custom-control-label
${pink} =     \#FF00FF


*** Test Cases ***
User can mix colors
    Click Element    ${red_color}
    Click Element    ${blue_color}
    Element Attribute Value Should Be    ${mixed_color}   data-color   ${pink}


User activating the field comment
    Element Should Be Disabled    ${comment_field}
    Click Element    ${test_checkbox}
    Element Should Be Enabled    ${comment_field}