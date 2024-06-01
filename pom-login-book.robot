*** Settings ***
Documentation        Segala hal yg berkaitan dengan login
Resource             base-login-book.robot

*** Keywords ***
Login With Valid Credential
    [Arguments]                ${username}   ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username        ${username}
    Input User Password    ${password}
    Click Sign In Button On Login Screen

*** Variables ***
username_input: //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
password_input: //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]

*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]


Verify Success Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}         text=${username}

Input User Password
    [Arguments]                      ${password}
    Input Text                       locator=${password_input}         text=${password}

Click Sign In Button On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
