*** Variables ***
${myAccountPageTitleLabel}        xpath=//h1[@class='page-heading']
${searchTextBox}                  id=search_query_top
${searchButton}                   xpath=//button[@name='submit_search']
${firstSearchResultLabel}         xpath=//h5[@itemprop='name']/a[1]


*** Keywords ***
Get The Row Locator By Elder First Name And Last Name [Arguments] ${firstNameVal} ${lastNameVal}
    [Documentation]
	...  Get check box locator by name  ...
    
    ${checkBoxLocator}   Set Variable   xpath=//td[text()='${firstNameVal} ${lastNameVal}']/parent::*
    Return from keyword    ${checkBoxLocator}