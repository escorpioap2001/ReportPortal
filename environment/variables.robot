*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  OperatingSystem
Library  String

*** Variables ***

*** Keywords ***
Setup Environment
  [Arguments]  ${browser}=Chrome
  Set Global Variable  ${browser}  ${browser}
  Set Global Variable  ${urlTricentisDemoWebShop}  https://demowebshop.tricentis.com/
  Set Global Variable  ${username}  johndoe@dummyweb.com
  Set Global Variable  ${password}  Tosca1234!
End Tests
  Close All Browsers