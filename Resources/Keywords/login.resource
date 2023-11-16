*** Settings ***
Resource  ../../Libraries/common.resource
Resource  ../../Resources/Variables/domain_environment.resource
Resource  ../../Resources/Locators/message.resource
Resource  ../../Resources/Locators/input.resource
Resource  ../../Resources/Locators/checkBox.resource
Resource  ../../Resources/Locators/button.resource


*** Keywords ***
User Try To Login With Valid Data
    Given User In Login Page
    And Put The Valid UserName
    And Put The Valid User Password
    And Click Remember Me Checkbox
    Then Click The Login Button


User In Login Page
    Open Browser    ${${ENVIRONMENT}_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${Welcome Message In Login}
    Element Should Be Visible   ${Input Fields In Login}
    Set Log Level    TRACE


Put The Valid UserName
	Input Text    locator=${Login UserName}   text=admin

Put The Valid User Password
	Input Password    locator=${Login PassWord}     password=P!@$$w0rd


Click Remember Me Checkbox
	Click Element    locator=${Login Remember CheckBox}
	Checkbox Should Be Selected    locator=${Login Remember CheckBox}

Click The Login Button
    Click Button     locator=${Login Button}






