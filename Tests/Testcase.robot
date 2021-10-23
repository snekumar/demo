*** Settings ***
Library     SeleniumLibrary
Suite Setup
Suite Teardown


*** Test Cases ***
Observe user is able to test sanity
    [Tags]  sanity
    User Launch browser for flipkart store 
    User enter there username and password
    Goto electronics section 
   

*** Keywords ***
User Launch browser for flipkart store
    Open Browser       https://www.flipkart.com/  gc
    Maximize Browser Window
    Sleep   2s
User enter there username and password
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  9481137996
    Input Password  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  Test123
    Sleep   1s
    Click Button  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep   1s
Goto electronics section 
    Click Element   xpath=//*[@id="container"]/div/div[2]/div/div/div[3]
    Sleep   3s
    close Browser
    