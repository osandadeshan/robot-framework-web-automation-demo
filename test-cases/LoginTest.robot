*** Setting ***
Resource   ../object-repository/page-objects/LoginPo.robot

Documentation   This suite includes login tests

Test Teardown  Close Browser


*** Variables ***
${invalidUserName}                       osa
${invalidPassword}                       test@12
${WRONG_PASSWORD_ERROR_MESSAGE}          Wrong password.
${USER_DOES_NOT_EXIST_ERROR_MESSAGE}     User does not exist.


*** Test Cases ***
Verify That An Unregistered Person Cannot Login To The Application
    [Documentation]    TVerify that an unregistered person cannot login to the application
    [tags]  Regression
    
    Open Browser To Login Page
    Submit Login Information [Arguments] ${invalidUserName} ${invalidPassword}
    User Should See An Alert With The Error Message [Arguments] ${USER_DOES_NOT_EXIST_ERROR_MESSAGE}
    
    
Verify That A Registered User Cannot Login To The Application Using An Incorrect Password
    [Documentation]    Verify that a registered user cannot login to the application using an incorrect password
    [tags]  Regression
    
    Open Browser To Login Page
    Submit Login Information [Arguments] ${USERNAME} ${invalidPassword}
    User Should See An Alert With The Error Message [Arguments] ${WRONG_PASSWORD_ERROR_MESSAGE}


Verify That A Registered User Can Login To The Application Using The Correct Password
    [Documentation]    Verify that a registered user can login to the application using the correct password
    [tags]  Smoke
    
    Login To The Application [Arguments] ${USERNAME} ${PASSWORD}
    Logout From The Application