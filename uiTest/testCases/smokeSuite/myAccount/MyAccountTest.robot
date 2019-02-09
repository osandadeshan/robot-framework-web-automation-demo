*** Setting ***
Resource   ../../../objectRepository/pageObjects/userManagement/LoginPo.robot
Resource   ../../../objectRepository/pageObjects/myAccount/MyAccountPo.robot
Resource   ../../../objectRepository/pageObjects/common/CommonPo.robot

Library    SeleniumLibrary

Documentation    
 ...  This suite includes elder creation smoke tests  ...

Suite Setup     Open Browser And Login To The Application
Suite Teardown  Close Browser


*** Variables ***
${searchText}                       Shirt
${searchResultText}                 Faded Short Sleeve T-shirts


*** Test Cases ***
Verify that an item can be searched
    [Documentation]
	...  This testcase verified an item can be searched  ...
    
    Navigates To My Account Page
    Search An Item [Arguments] ${searchText}
    Verify That The Item Is Visible [Arguments] ${searchResultText}