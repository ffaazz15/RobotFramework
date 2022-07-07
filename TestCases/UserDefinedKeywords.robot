***Settings ***
Library     SeleniumLibrary

***Variables ***
${url}    https://www.facebook.com/login/
${browser}    chrome


***Test Cases ***
TC1
    launchbrowser
    input text    id:email    fazil123
    input text    id:pass     wdksdked
    sleep    2



***Keywords ***
launchbrowser
    open browser    ${url}  ${browser}
    maximize browser window

