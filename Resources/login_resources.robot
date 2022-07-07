***Settings ***
library    SeleniumLibrary

***Variables ***
${Login URL}      https://admin-demo.nopcommerce.com/login
${browser}        chrome

***Keywords ***
Open Browser to run
    Open Browser     ${Login URL}     ${browser}
    maximize browser window


Close Browser after execution
    Close All Browsers

Open Login Page
    go to     ${Login URL}

Input user Name
    [Arguments]    ${username}
    input text    id:Email    ${username}

Input Password
     [Arguments]     ${password}
     input text    id:Password    ${password}

click loginButton
    click element     xpath://button[contains(text(),'Log in')]

click LogOut
    click element     xpath://a[contains(text(),'Logout')]

Error message must be visible
    page should contain     Login was unsuccessful

DashBoard page is visible
    page should contain    Dashboard
