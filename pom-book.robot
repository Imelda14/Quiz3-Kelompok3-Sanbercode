*** Settings ***
Documentation        Segala hal yg berkaitan dengan booking
Resource             base-login-book.robot
Resource             pom-login-book.robot

*** Keywords ***

Click Book Button
    Click Element                    locator=com.example.myapplication:id/book

Click One Way Button
    Click Element                    locator=//android.support.v7.app.ActionBar.Tab[@content-desc="One Way"]

Click From City List
    Click Element                    locator=com.example.myapplication:id/spinnerFrom

Choose New York
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]

Click To City List
    Click Element                    locator=com.example.myapplication:id/spinnerTo

Choose London
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]

Click Class List
    Click Element                    locator=com.example.myapplication:id/spinnerClass

Choose Economy
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]

Click Start Date Button
    Click Element                    locator=com.example.myapplication:id/textStartDate

Choose Date
    Click Element                    locator=01 August 2019

Click OK Button
    Click Element                    locator=android:id/button1

Click End Date Button
    Click Element                    locator=com.example.myapplication:id/textEndDate

Choose Date
    Click Element                    locator=01 August 2019

Click OK Button
    Click Element                    locator=android:id/button1

Click Button Flight
    Click Element                    locator=com.example.myapplication:id/radioButtonFlight

Click Book Button
    Click Element                    locator=com.example.myapplication:id/book_flight

Click Price Button
    Click Element                    locator=com.example.myapplication:id/price1

Click Confirm Button
    Click Element                    locator=com.example.myapplication:id/confirm_order

Verify Success Book
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]