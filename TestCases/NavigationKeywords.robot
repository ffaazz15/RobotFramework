***Settings ***
Library    SeleniumLibrary



***Variables ***
${url}   https://www.bing.com/
${browser}    chrome

***Test Cases ***
navigation
    open browser     ${url}      ${browser}
    ${loc}=    get location
    log to console      ${loc}

    go to    https://www.youtube.com/
    ${loc}=    get location
    log to console      ${loc}

    go back
    ${loc}=    get location
    log to console      ${loc}

    close all browsers
