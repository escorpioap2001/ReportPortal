*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${headerLogo}  xpath:.//a/img[@alt="Tricentis Demo Web Shop"][@src="/Themes/DefaultClean/Content/images/logo.png"]
${loginLink}  class:ico-login
${logoutLink}  class:ico-logout
${loginInput}  id:Email
${passwordInput}  id:Password
${loginButton}  xpath:.//input[@value="Log in"]
${loginWelcomeMessage}  xpath:.//h1[text()="Welcome, Please Sign In!"]
${checkUserLogin}  xpath:.//a[text()='
${browser}  Chrome
${urlTricentisDemoWebShop}  https://demowebshop.tricentis.com/
${username}  johndoe@dummyweb.com
${password}  Tosca1234!

*** Keywords ***

Open Browser To Login Page

  Open Browser  ${urlTricentisDemoWebShop}  ${browser}
  Maximize Browser Window
  Wait Until Page Contains Element  ${headerLogo}
  Click Link  ${loginLink}

Login with ${username} and ${password}
#  [Arguments]  ${username}  ${password}
  Input Text  ${loginInput}  ${username}
  Input Text  ${passwordInput}  ${password}
  Click Button  ${loginButton}

Welcome Page Is Displayed
  ${checkUserLogin}  Catenate  SEPARATOR=  ${checkUserLogin}${username}']
  Wait Until Page Contains Element  ${checkUserLogin}
  Wait Until Element Is Visible  ${logoutLink}

*** Test Cases ***

Login correcto
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With johndoe@dummyweb.com And Tosca1234!
  Then Welcome Page Is Displayed