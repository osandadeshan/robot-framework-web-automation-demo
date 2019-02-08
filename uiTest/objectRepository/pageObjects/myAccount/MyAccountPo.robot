*** Settings ***
Resource    ../../locators/myAccount/MyAccountPageLocators.robot
Resource    ../common/CommonPo.robot
Resource    ../common/NavBarPo.robot
   
Library     SeleniumLibrary


*** Variables ***
${MY_ACCOUNT_PAGE_TITLE}    MY ACCOUNT


*** Keywords ***
Navigates To My Account Page
    [Documentation]
	...  Navigates to my account page  ...
    
    Click Element [Arguments] ${userProfileNameLabel}
    User Is In The My Account Page
    
    
User Is In The My Account Page
    [Documentation]
	...  Verify that the user is in the my account page  ...

    Element Text Should Be [Arguments] ${myAccountPageTitleLabel} ${MY_ACCOUNT_PAGE_TITLE}
    

Search An Item [Arguments] ${searchText}
    [Documentation]
	...  Verifies that an item can be searched  ...
    
    Set Text [Arguments] ${searchTextBox} ${searchText}
    Click Element [Arguments] ${searchButton}
    
    
Verify That The Item Is Visible [Arguments] ${itemNameVal}
    [Documentation]
	...  Verifies that the item is visible on the list  ...
     
    Element Text Should Be [Arguments] ${firstSearchResultLabel} ${itemNameVal}