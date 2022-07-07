***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url}     https://testautomationpractice.blogspot.com/


***Test Cases ***
Handle alerts
    open browser       ${url}     ${browser}
    maximize browser window
    set selenium speed    2 seconds
    click element    xpath://button[contains(text(),'Click Me')]
    handle alert     accept
    click element    xpath://button[contains(text(),'Click Me')]
    handle alert     dismiss


    click element    xpath://button[contains(text(),'Click Me')]
    alert should be present      Press a button!       #to handle message in alert
     handle alert     dismiss

    click element    xpath://button[contains(text(),'Click Me')]
    alert should not be present     Press a button!
    close browser



***Keywords ***
