***Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot      #this uses resources      #../ means cwd
Suite setup      Open Browser to run            #opens once before all test
Suite TearDown   Close Browser after execution           #closes after everything is complete
Test Template    Invalid Login      #Invalid Login->its name given in keyword

#this uses resources
#../ means cwd

***Test Cases ***             username             password
Right user Empty pwd      admin@yourstore.com       ${EMPTY}
Right user wrong pwd      admin@yourstore.com       svxjhsxch
wrong user Right pwd      ain@yourstore.co          admin
wrong user wrong pwd       sdnksanc@hskdn.co         jsdajwdi
wrong user Empty pwd       sdnksanc@hskdn.co         ${EMPTY}



***Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input user Name    ${username}
    Input Password     ${password}
    click loginButton
    Error message must be visible