*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Hello world
    Log    I'm Piotr
    Log    Hello world


Browser puppeter
    Open Browser  http://google.com  chrome
    Sleep     3
    Close browser
