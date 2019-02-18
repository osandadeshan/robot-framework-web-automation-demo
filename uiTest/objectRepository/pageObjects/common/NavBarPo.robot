*** Settings ***
Resource   ../../locators/common/NavBarLocators.robot
Resource   ../../locators/common/CommonLocators.robot
Resource   CommonPo.robot

Library    SeleniumLibrary
Library    String
Library    OperatingSystem


*** Variables ***
${WOMEN_PAGE_TITLE}      WOMEN
${DRESSES_PAGE_TITLE}    DRESSES


*** Keywords ***
Navigates To Women Page
    [Documentation]
	...  Navigate to women page  ...
	
    Click Element [Arguments] ${womenLink} ${SMALL_RETRY_COUNT}
    Page Title Should Be [Arguments] ${WOMEN_PAGE_TITLE} ${SMALL_RETRY_COUNT}
    
    
Navigates To Dresses Page
    [Documentation]
	...  Navigate to dresses page  ...
	
    Click Element [Arguments] ${dressesLink} ${SMALL_RETRY_COUNT}
    Page Title Should Be [Arguments] ${DRESSES_PAGE_TITLE} ${SMALL_RETRY_COUNT}