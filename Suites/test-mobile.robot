*** Settings ***
# untuk import file lain\
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot

*** Test Cases ***
User Should Be Able To Login With Valid Credential
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username 
    Input User Password
    Click Login Button On Login Screen

