*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest
#    create webdriver    chrome executable_path=" /home/mfazil/Downloads/chromedriver_linux64/chromedriver"
    open browser     ${url}    ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password    Test123
    click element   xpath://button[contains(text(),'Log in')]
