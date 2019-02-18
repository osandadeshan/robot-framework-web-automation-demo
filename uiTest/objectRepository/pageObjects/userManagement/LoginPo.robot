*** Settings ***
Resource    ../../locators/userManagement/LoginPageLocators.robot
Resource    ../myAccount/MyAccountPo.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary


*** Keywords ***
Submit Login Information [Arguments] ${userNameVal} ${passwordVal}
    [Documentation]
	...  Fill login information and click on login button  ...
    
    Set Text [Arguments] ${usernameTextBox} ${userNameVal} ${SMALL_RETRY_COUNT}
    Set Text [Arguments] ${passwordTextBox} ${passwordVal} ${SMALL_RETRY_COUNT}
    Click Element [Arguments] ${loginButton} ${SMALL_RETRY_COUNT}
    
    
Login To The Application [Arguments] ${userNameVal} ${passwordVal}
    [Documentation]
	...  Login using valid username and password  ...

    Submit Login Information [Arguments] ${userNameVal} ${passwordVal}
    User Is In The My Account Page
    
    
Open Browser And Login To The Application
    [Documentation]
	...  Open browser and login using valid username and password  ...

    Open Browser To Login Page
    Submit Login Information [Arguments] ${USERNAME} ${PASSWORD}
    
    
User Is In The Login Page
    [Documentation]
	...  Verify that the user is in the login page  ...

    Element Should Be Visible [Arguments] ${loginPageLogo} ${SMALL_RETRY_COUNT}


    