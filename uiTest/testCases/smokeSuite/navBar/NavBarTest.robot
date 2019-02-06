*** Setting ***
Resource   ../../../objectRepository/pageObjects/userManagement/LoginPo.robot
Resource   ../../../objectRepository/pageObjects/common/NavBarPo.robot

Library    SeleniumLibrary

Documentation    
 ...  This suite includes navigation bar smoke tests  ...

Suite Setup     Open Browser And Login To The Application
Suite Teardown  Close Browser


*** Test Cases ***
Verify that a user can navigates to the dresses page
    [Documentation]
	...  This testcase verified a user can navigates to the dresses page  ...
    
    Navigates To Dresses Page
    
    
Verify that a user can navigates to the women page
    [Documentation]
	...  This testcase verified a user can navigates to the women page  ...
    
    Navigates To Women Page