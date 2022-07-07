***Settings ***
Library      SeleniumLibrary

***Variables ***
${browser}    chrome
${url}      https://opensource-demo.orangehrmlive.com/
***Test Cases ***
screen shots
    open browser     ${url}    ${browser}
    maximize browser window
    input text    id:txtUsername     Admin
    input text    id:txtPassword     admin123


    capture element screenshot    xpath://*[@id="divLogo"]/img    /home/mfazil/Desktop/pythonPractise/Robot/logoScreenshot.png
    capture page screenshot    /home/mfazil/Desktop/pythonPractise/Robot/logoScreenshot2.png
