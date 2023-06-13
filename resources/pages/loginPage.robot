*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${logoutLink}  class:ico-logout
${loginInput}  id:Email
${passwordInput}  id:Password
${loginButton}  xpath:.//input[@value="Log in"]
${loginWelcomeMessage}  xpath:.//h1[text()="Welcome, Please Sign In!"]
${checkUserLogin}  xpath:.//a[text()='

${spanEmail}  xpath:.//span[@for="Email"]
${spanMissingPass}  xpath:.//div[@class="validation-summary-errors"]/span[text()="Login was unsuccessful. Please correct the errors and try again."]

*** Keywords ***

Login with ${username} and ${password}
#  [Arguments]  ${username}  ${password}
  #Open Browser To Login Page
  Input Text  ${loginInput}  ${username}
  Input Text  ${passwordInput}  ${password}
  Click Button  ${loginButton}

Welcome Page Is Displayed
  ${checkUserLogin}  Catenate  SEPARATOR=  ${checkUserLogin}${username}']
  Wait Until Page Contains Element  ${checkUserLogin}
  Wait Until Element Is Visible  ${logoutLink}

Error In Email
  Wait Until Page Contains Element  ${spanEmail}

Error With Missing Field
  Wait Until Page Contains Element  ${spanMissingPass}