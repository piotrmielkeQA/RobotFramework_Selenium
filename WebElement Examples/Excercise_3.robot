*** Settings ***   
Library    SeleniumLibrary       
Library    String
Library    XML


*** Test Cases ***
User can open radio page
    Open Browser    https://qbek.github.io/selenium-exercises/pl/radio_buttons.html  chrome
    Select Radio Button    radio-select   rmffm
    #Pierwsze podejśćie z otwieraniem strony 3
    # Click Element    css:#radio-details a
    # Title Should Be    Radio RMF FM - Najlepsza Muzyka
    #Drugie podejście ze sprawdzeniem widoczności atrybutu
    # Element Should Be Visible    css:#radio-details a
    # Element Attribute Value Should Be    css:#radio-details a    href    https://www.rmf.fm/
    #Trzecie podejście
    Element Should Be Visible    css:a[href="https://www.rmf.fm"]
    Close Browser

    