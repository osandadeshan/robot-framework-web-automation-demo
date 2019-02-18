*** Settings ***
Resource   ../../../configs/EnvDetails.robot
Resource   ../../../configs/BrowserDetails.robot
Resource   ../../../configs/SeleniumConfigs.robot
Resource   ../../../configs/ApplicationVariables.robot
Resource   ../../locators/userManagement/LoginPageLocators.robot
Resource   ../../locators/common/CommonLocators.robot

Library    SeleniumLibrary
Library    String
Library    OperatingSystem


*** Keywords ***
Open Browser To Login Page
    [Documentation]
	...  Open the browser and navigates to the login page  ...
	
    Open Browser      ${ENV}   ${BROWSER}
    Set Window Size	    ${WINDOW_WIDTH}     ${WINDOW_HEIGHT}
    Set Selenium Timeout     ${SELENIUM_TIMEOUT}
    Element Should Be Visible [Arguments] ${loginPageLogo} ${SMALL_RETRY_COUNT}
    Set Log Level    DEBUG     


Logout From The System
    [Documentation]
	...  Logout from the system  ...
	
	Click Element [Arguments] ${signOutLink} ${SMALL_RETRY_COUNT}
    Element Should Be Visible [Arguments] ${loginPageLogo} ${SMALL_RETRY_COUNT}
 
       
Get Random Text
     [Documentation]
	...  Return random text value  ...
      
    ${randomText}    Generate Random String      8      [LETTERS]
    Return From Keyword     ${randomText}
 
      
Get Current Epoch Time
     [Documentation]
	 ...  Return current epoch time  ...
    
    ${randomText}    Get Time    epoch
    Return From Keyword     ${randomText}   

      
Verify Page Loader Completed Successfully [Arguments] ${retryScale}
    [Documentation]
	...  Verify that the home page application icon is visible  ...
    
    ${isPageLoaderPresent}    Run Keyword And Return Status    Element Should Be Visible   ${pageLoader}
    Run Keyword If    ${isPageLoaderPresent}    Element Should Not Be Visible [Arguments] ${pageLoader} ${retryScale}
    ${isListLoaderPresent}    Run Keyword And Return Status    Element Should Be Visible   ${listLoader}
    Run Keyword If    ${isListLoaderPresent}    Element Should Not Be Visible [Arguments] ${listLoader} ${retryScale}
    Element Should Be Visible [Arguments] ${homePageLogo} ${retryScale} 


Verify Modal Is Open [Arguments] ${retryScale}
    [Documentation]
	...  Verify that the modal loaded successfully  ...
    
    Element Should Be Visible [Arguments] ${modal} ${retryScale}


Verify Modal Is Not Open [Arguments] ${retryScale} 
    [Documentation]
	...  Verify that the modal is closed successfully  ...
	
	Element Should Not Be Visible [Arguments] ${modal} ${retryScale}

     
Verify Toast Message Disappeared [Arguments] ${retryScale}
    [Documentation]        
	...  Verify that the toast message is not showing on the page  ...
    
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Page Contains Element    ${toastMessage}
    Click Element    ${toastMessage}
    Element Should Not Be Contained In The Page [Arguments] ${toastMessage} ${retryScale} 


Page Title Should Be [Arguments] ${pageTitleVal} ${retryScale}
    [Documentation]        
	...  Verify the current page title  ...

    Element Text Should Be [Arguments] ${pageTitleLabel} ${pageTitleVal} ${retryScale}


Element Should Be Contained In The Page [Arguments] ${locator} ${retryScale}
    [Documentation]        
	...  Verify that the element should be contained in the page  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Page Contains Element    ${locator}
    

Element Should Not Be Contained In The Page [Arguments] ${locator} ${retryScale}
    [Documentation]        
	...  Verify that the element should not be contained in the page  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Page Does Not Contain Element   ${locator}


Element Should Be Visible [Arguments] ${locator} ${retryScale}
    [Documentation]        
	...  Verify that the element should be visible  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Visible    ${locator}


Element Should Not Be Visible [Arguments] ${locator} ${retryScale}
    [Documentation]        
	...  Verify that the element should not be visible  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Not Visible   ${locator}


Click Element [Arguments] ${locator} ${retryScale}
    [Documentation]        
	...  Click on a given button  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Enabled    ${locator}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Click Element  ${locator}


Click Element By JavaScript Executor [Arguments] ${elementXpathLocator} ${retryScale}
    [Documentation]
    ...  Click an element by xpath using javascript executor  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Enabled    ${elementXpathLocator}
    ${elementXpathLocator}=    Remove String        ${elementXpathLocator}   xpath=
    Execute JavaScript  document.evaluate("${elementXpathLocator}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    
    
Element Text Should Be [Arguments] ${locator} ${text} ${retryScale}
    [Documentation]        
	...  Validate the text of an element  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Visible    ${locator}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Element Text Should Be    ${locator}    ${text}    


Set Text [Arguments] ${textBoxLocator} ${text} ${retryScale}
    [Documentation]        
	...  Input text into a text box  ...

    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Enabled    ${textBoxLocator}
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Input Text    ${textBoxLocator}    ${text}


Select From Dropdown [Arguments] ${dropdownLocator} ${text} ${retryScale}
    [Documentation]        
	...  Select an option value from a dropdown  ...

    Click Element [Arguments] ${dropdownLocator} ${retryScale}
    ${optionLocator}    Get Option Locator By Name From Dropdown [Arguments] ${text}
    Click Element [Arguments] ${optionLocator} ${retryScale}
    
    
Click The Radio Button [Arguments] ${radioButtonLabelVal} ${retryScale}
    [Documentation]        
	...  Click the radio button  ...
    
    ${radioButtonLocator}   Get Radio Button Locator By Name [Arguments] ${radioButtonLabelVal}
    Click Element [Arguments] ${radioButtonLocator} ${retryScale}


Click The Checkbox [Arguments] ${checkBoxLabelVal} ${retryScale}
    [Documentation]        
	...  Check the check box, only if the checkbox status is unchecked  ...
    
    ${checkBoxLocator}   Get Check Box Locator By Name [Arguments] ${checkBoxLabelVal}
    Click Element [Arguments] ${checkBoxLocator} ${retryScale}


Check The Checkbox [Arguments] ${checkBoxLocator} ${retryScale}
    [Documentation]        
	...  Check the check box, only if the checkbox status is unchecked  ...
    
    Wait Until Keyword Succeeds    ${retryScale}     ${RETRY_DELAY}    Wait Until Element Is Enabled  ${checkBoxLocator}
	${isCheckboxSelected}    Run Keyword And Return Status    Checkbox Should Be Selected    ${checkBoxLocator}
    Run Keyword If    '${isCheckboxSelected}'== 'False'    Click Element [Arguments] ${checkBoxLocator} ${retryScale}


Select The Date From DatePicker [Arguments] ${datePickerLocator} ${year} ${month} ${date} ${retryScale}
    [Documentation]        
	...  Select a date from the date picker  ...
    
    Click Element [Arguments] ${datePickerLocator} ${retryScale}
    Click Element [Arguments] ${datePickerCurrentMonthYearElement} ${retryScale}
    Click Element [Arguments] ${datePickerCurrentMonthYearElement} ${retryScale}
    Click Element [Arguments] ${datePickerPreviousButton} ${retryScale}    
    Click Element [Arguments] ${datePickerPreviousButton} ${retryScale}    
    Click Element [Arguments] ${datePickerPreviousButton} ${retryScale}    
    ${yearLocator}   Get Locator By Text [Arguments] ${year}
    Click Element [Arguments] ${yearLocator} ${retryScale}
    ${monthLocator}   Get Locator By Text [Arguments] ${month}
    Click Element [Arguments] ${monthLocator} ${retryScale}
    ${dateLocator}   Get Locator By Text [Arguments] ${date}
    Click Element [Arguments] ${dateLocator} ${retryScale}