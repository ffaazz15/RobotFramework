***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url}    http://demo.automationtesting.in/Windows.html


***Test Cases ***
tabbed window
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    2
    click element    xpath://*[@id="Tabbed"]/a/button

    select window    title=Selenium      #selects the 2nd window
    click element    xpath://span[contains(text(),'Documentation')]
    sleep    3
    close all browsers

***Keywords ***
