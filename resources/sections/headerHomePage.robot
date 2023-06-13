*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${headerLogo}  xpath:.//a/img[@alt="Tricentis Demo Web Shop"][@src="/Themes/DefaultClean/Content/images/logo.png"]
${loginLink}  class:ico-login

*** Keywords ***

Open Browser and Confirm with Logo

  Open Browser  ${urlTricentisDemoWebShop}  ${browser}
  Maximize Browser Window
  Wait Until Page Contains Element  ${headerLogo}

Click in the Link of Login

  Click Link  ${loginLink}