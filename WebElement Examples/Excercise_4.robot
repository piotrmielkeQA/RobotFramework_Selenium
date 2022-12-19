*** Settings ***   
Library    SeleniumLibrary       



*** Test Cases ***
User can win
    Open Browser    https://qbek.github.io/selenium-exercises/pl/selects.html  chrome
    Select From List By Value    locator
    Select From List By Value    locator
    Click Element    css:
