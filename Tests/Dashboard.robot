*** Settings ***
Resource   ../Libraries/common.resource
Resource   ../Resources/Keywords/dashboard.resource
Resource   ../Resources/Keywords/login.resource


Suite Setup  User Try To Login With Valid Data
Suite Teardown  Close Browser


*** Test Cases ***
User Actions Inside IMS_Rebuild
	User In Dashboard Page


