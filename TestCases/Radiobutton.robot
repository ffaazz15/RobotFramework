***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

***Test Cases ***
Testing Radio buttons and checkBox
    open browser     ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds        #sets speed of script by 2 seconds each ...each step will take 2 seconds

    #selects radio button
                          #name of radio and follwed by keyword
    select radio button    sex    Female
    select radio button    exp    6


    #selecting checkBox
    select checkbox    Manual Tester
    select checkbox    Automation Tester
    unselect checkbox    Manual Tester



***Keywords ***
