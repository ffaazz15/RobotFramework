***Settings ***
Library    SeleniumLibrary

***Variables ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/register



***Test Cases ***
RegTest
     ${spead} =    get selenium speed
     log to console    ${spead}
     open Browser    ${url}    ${browser}
      maximize browser window
      set selenium speed     2 seconds     #will execute each statement with 3 seconds of delay time
      #sleep    2
     select radio button     Gender    F

     input text    name:FirstName    fazilop
     input text    name:LastName     jksbdjsbxj
     input text    name:Email     ffaaq@gmail.com
     input text    name:Password     bksjxbs7896
     ${spead}=    get selenium speed
     log to console    ${spead}
     close browser
