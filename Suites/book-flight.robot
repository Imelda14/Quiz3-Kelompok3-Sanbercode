*** Settings ***
Resource    ../pom-login-book.robot
Resource    ../pom-book.robot

*** Test Cases ***
User Can Book The Ticket
    Click Book Button         
    Click One Way Button      
    Click From City List      
    Choose New York           
    Click To City List        
    Choose London             
    Click Class List          
    Choose Economy            
    Click Start Date Button   
    Choose Date               
    Click OK Button           
    Click End Date Button     
    Choose Date               
    Click OK Button           
    Click Button Flight       
    Click Book Button         
    Click Price Button        
    Click Confirm Button      
    Verify Success Book       
