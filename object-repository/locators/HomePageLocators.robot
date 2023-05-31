*** Keywords ***
Get Category Locator By Name [Arguments] ${categoryName}
    [Documentation]
	...  Get category locator by name  ...
    
    ${categoryLocator}   Set Variable   xpath=//a[@id='itemc' and text()='${categoryName}']
    Return from keyword    ${categoryLocator}
