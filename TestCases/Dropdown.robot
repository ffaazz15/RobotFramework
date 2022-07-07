***Settings ***
Library    SeleniumLibrary
***Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

***Test Cases ***
Handling DropDown from list
     open browser    ${url}    ${browser}
     maximize browser window
     Select From List By Label    continents    South America
     sleep    2
     Select From List By Index  continents    3
     close browser


***Keywords ***
