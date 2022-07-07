***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/register



***Test Cases ***
RegTest

     open Browser    ${url}    ${browser}
     maximize browser window
     set selenium timeout    10 seconds #now instead of 5 seconds it will wait for 10 seconds
     wait until page contains    Register    #it will check for this keyword ..if not in 5 secs then it will give error

     select radio button     Gender    F

     input text    name:FirstName    fazilop
     input text    name:LastName     jksbdjsbxj
     input text    name:Email     ffaaq@gmail.com
     input text    name:Password     bksjxbs7896

     close browser
