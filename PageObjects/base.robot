*** Settings ***
Documentation        Menyimpan open application, close application
Library              AppiumLibrary

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      8.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}        
    ...                     platformName=${PLATFORM_NAME}        
    ...                     platformVersions=${PLATFORM_VERSION}        
    ...                     deviceName=${DEVICE_NAME}        
    ...                     appPackage=${APP_PACKAGE}       
    ...                     appActivity=${APP_ACTIVITY}  