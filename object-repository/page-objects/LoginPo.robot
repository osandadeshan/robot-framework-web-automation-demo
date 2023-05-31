*** Settings ***
Resource    ../locators/LoginPageLocators.robot
Resource    CommonPo.robot


*** Keywords ***
Login To The Application [Arguments] ${username} ${password}
    [Documentation]
	...  Login using valid username and password  ...
    
    Open Browser To Login Page
    Submit Login Information [Arguments] ${username} ${password}
    Username Should Be Visible On The Navigation Bar [Arguments] ${username}


Username Should Be Visible On The Navigation Bar [Arguments] ${username}
    [Documentation]
	...  User should see the username on the navigation bar  ...

    ${loggedInUsernameWithGreeting}    Set Variable    Welcome ${username}
    Element Text Should Be [Arguments] ${loggedInUsernameWithGreetingLocator} ${loggedInUsernameWithGreeting} ${SMALL_RETRY_COUNT}


User Should See An Alert With The Error Message [Arguments] ${errorMessage}
    [Documentation]
	...  User should see an alert with the error message on the browser  ...

    Alert Should Be Present    ${errorMessage}


Submit Login Information [Arguments] ${username} ${password}
    [Documentation]
	...  Login using the username and password  ...
    
    Set Text [Arguments] ${usernameTextBox} ${username} ${SMALL_RETRY_COUNT}
    Set Text [Arguments] ${passwordTextBox} ${password} ${SMALL_RETRY_COUNT}
    Click Element [Arguments] ${loginButton} ${SMALL_RETRY_COUNT}


Open Browser And Login To The Application
    [Documentation]
	...  Open browser and login using valid username and password  ...

    Open Browser To Login Page
    Login To The Application [Arguments] ${USERNAME} ${PASSWORD}