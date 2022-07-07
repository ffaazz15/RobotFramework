***Settings ***
Library    SeleniumLibrary

***Variables ***
${url1}    https://www.google.com/
${browser}   chrome
${url2}    https://www.bing.com/

***Test Cases ***
MultiWindowTest
     open browser    ${url1}    ${browser}
     maximize browser window

     sleep    3
     open browser    ${url2}    ${browser}
     maximize browser window

     switch browser    1
     ${title1}=    get title
     log to console      ${title1}

      switch browser    2
     ${title2}=    get title
     log to console      ${title2}

     sleep    2
     close all browsers
