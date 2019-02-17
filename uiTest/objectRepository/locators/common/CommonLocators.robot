*** Variables ***
${homePageLogo}                          xpath=//img[@class='logo img-responsive']

# Success Notification Toast Message
${toastMessage}                          xpath=//div[@ng-class='config.title'][@class='ng-binding toast-title']

# Page Loader
${pageLoader}                            xpath=//div[@id='cui_blocker'][@class='loader-overlay loaded']
${listLoader}                            xpath=//div[@id='icon_device_spinner'][@ng-show='vm.loadData']

# Modal
${modal}                                 css=div.modal-backdrop 

# Page Heading
${pageTitleLabel}                        xpath=//h2[@class='title_block']

# Date Picker Elements
${datePickerCurrentMonthYearElement}     xpath=//button[@ng-click='toggleMode()']
${datePickerPreviousButton}              xpath=//tr//th[1]//button[1]
${datePickerNextButton}                  xpath=//tr//th[3]//button[1]

# User Profile
${userProfileNameLabel}                  xpath=//a[@title='View my customer account']/span

# Signout Elements
${signOutLink}                           xpath=//a[@title='Log me out']


*** Keywords ***
Get Check Box Locator By Name [Arguments] ${checkBoxLabelVal}
    [Documentation]
	...  Get check box locator by name  ...
    
    ${checkBoxLocator}   Set Variable   xpath=//*[text()='${checkBoxLabelVal}']/preceding::input[1]
    Return from keyword    ${checkBoxLocator}
    

Get Radio Button Locator By Name [Arguments] ${radioButtonLabelVal}
    [Documentation]
	...  Get radio button locator by name  ...

    ${radioButtonLocator}   Set Variable   xpath=//*[contains(text(), '${radioButtonLabelVal}')]/preceding::input[1]
    Return from keyword    ${radioButtonLocator}
    
    
Get Option Locator By Name From Dropdown [Arguments] ${text}
    [Documentation]    
    ...  Get option locator from a dropdown  ...
    
    ${optionLocator}   Set Variable   xpath=//div[text()='${text}']
    Return from keyword    ${optionLocator} 
    
    
Get Locator By Text [Arguments] ${text}
    [Documentation]    
    ...  Get locator from the text  ...
    
    ${locator}   Set Variable   xpath=//*[text()='${text}']
    Return from keyword    ${locator} 