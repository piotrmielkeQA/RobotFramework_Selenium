*** Settings ***   
Library    SeleniumLibrary       


*** Test Cases ***
User can save his personal data
    Open Browser    https://qbek.github.io/selenium-exercises/pl/basic_form.html  chrome
    Input Text    css:#firstname    Piotr
    Input Text    css:#lastname    Mielke
    Input Text    css:#email  piotr.mielke@ergo.com
    Click Element    css:.btn-success
    Wait Until Element Is Visible    css:#firstname-check
    Element Text Should Be    css:#firstname-check   Piotr
    Element Text Should Be    css:#lastname-check     Mielke
    Element Attribute Value Should Be    css:.form-control-plaintext   value    piotr.mielke@ergo.com
    Close Browser
