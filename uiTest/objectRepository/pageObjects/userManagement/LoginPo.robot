*** Settings ***
Resource    ../../locators/userManagement/LoginPageLocators.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary


*** Keywords ***
Submit Login Information [Arguments] ${userNameVal} ${passwordVal}
    [Documentation]
	...  Fill login information and click on login button  ...
    
    Set Text [Arguments] ${usernameTextBox} ${userNameVal}
    Set Text [Arguments] ${passwordTextBox} ${passwordVal}
    Click Element [Arguments] ${loginButton}
    
    
Login To The Application [Arguments] ${userNameVal} ${passwordVal}
    [Documentation]
	...  Login using valid username and password  ...

    Submit Login Information [Arguments] ${userNameVal} ${passwordVal}
    
    
Open Browser And Login To The Application
    [Documentation]
	...  Open browser and login using valid username and password  ...

    Open Browser To Login Page
    Submit Login Information [Arguments] ${USERNAME} ${PASSWORD}


    