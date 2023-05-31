*** Settings ***
Resource   ../locators/NavBarLocators.robot
Resource   CommonPo.robot


*** Variables ***
${WOMEN_PAGE_TITLE}      WOMEN
${DRESSES_PAGE_TITLE}    DRESSES


*** Keywords ***
Navigates To Home Page
    [Documentation]
	...  Navigate to home page  ...
	
    ${homePageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Home
    Click Element [Arguments] ${homePageLocator} ${SMALL_RETRY_COUNT}
    

Navigates To Contact Page
    [Documentation]
	...  Navigate to contact page  ...
	
    ${contactPageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Contact
    Click Element [Arguments] ${contactPageLocator} ${SMALL_RETRY_COUNT}