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
	
    Click Element [Arguments] ${womenLink}
    Page Title Should Be [Arguments] ${WOMEN_PAGE_TITLE}
    
    
Navigates To Dresses Page
    [Documentation]
	...  Navigate to dresses page  ...
	
    Click Element [Arguments] ${dressesLink}
    Page Title Should Be [Arguments] ${DRESSES_PAGE_TITLE}