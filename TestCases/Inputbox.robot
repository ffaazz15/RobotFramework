***Settings ***
Library    SeleniumLibrary


***variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

***Test Cases ***
TestingInputBox
    open browser     ${url}     ${browser}
    maximize browser window
    functionality
    close browser
***Keywords ***
functionality
     title should be    nopCommerce demo store
     click link    xpath://a[contains(text(),'Log in')]
     $("email_txt")     set variable     id:Email
     element should be visible     $("email_txt")
     element should be enabled     $("email_txt")

     input text     $("email_txt")     John@gmail.com

     sleep 5
     clear element text    $("email_txt")
     sleep 3


