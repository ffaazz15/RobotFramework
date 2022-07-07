***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url1}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${url2}    http://demowebshop.tricentis.com/register

***Test Cases ***
MyTestCases
     open browser    ${url1}    ${browser}
     sleep    2
     open browser    ${url2}     ${browser}
     sleep    2
     #close browser     --> to close only one latest browser
     close all browsers
