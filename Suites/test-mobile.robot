*** Settings ***
# untuk import file lain
Library        AppiumLibrary

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      8.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

*** Keywords ***
# untuk mendefinisikan keyword
Open Flight Application
    Open Application        ${REMOTE_URL}        
    ...                     platformName=${PLATFORM_NAME}        
    ...                     platformVersions=${PLATFORM_VERSION}        
    ...                     deviceName=${DEVICE_NAME}        
    ...                     appPackage=${APP_PACKAGE}       
    ...                     appActivity=${APP_ACTIVITY}   

Verify Home Screen Appears
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]             

Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=support@gendigital.com

Input Password
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]        text=abc123

Click Login Button On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Sucess Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

*** Test Cases ***
User Should Be Able To Login With Valid Credential
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username
    Input Password
    Click Login Button On Login Screen

