*** Settings ***
Resource   ../../Libraries/common.resource
Resource   ../../Resources/Locators/links.resource
Resource   ../../Resources/Locators/element.resource


*** Keywords ***
User In Dashboard Page
	Click Dashboard Link
#------- Keyword 2
#------- Keyword 3
#-------- etc




Click Dashboard Link
     Wait Until Element Is Visible   locator=${Dashboard Link}
     Click Element   locator=${Dashboard Link}
     Wait Until Page Contains Element  locator=${Dashboard Element}
     Verify Any State Location


Verify Any State Location
	${HTTP Address}  Get Location
	Log To Console    ${\n}Your Location Now: ${HTTP Address}

