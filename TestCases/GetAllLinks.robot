***Settings ***
Library    SeleniumLibrary

***Test Cases ***
GetAllLinks
    open browser     https://www.hackerearth.com/   chrome
    maximize browser window
    ${AllLinks}=     get element count    xpath://a
    log to console     ${AllLinks}

    @{itemsInLink}    create list
    FOR    ${i}    IN RANGE    1    ${AllLinks}
          ${itemsInLink}=    get text    xpath:(//a)[${i}]
          log to console    ${itemsInLink}
    END