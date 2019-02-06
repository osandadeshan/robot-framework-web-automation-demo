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
    Element Text Should Be [Arguments] ${pageTitle} ${WOMEN_PAGE_TITLE}
    
    
Navigates To Dresses Page
    [Documentation]
	...  Navigate to dresses page  ...
	
    Click Element [Arguments] ${dressesLink}
    Element Text Should Be [Arguments] ${pageTitle} ${DRESSES_PAGE_TITLE}