*** Settings ***
Resource  ../../environment/variables.robot
Resource  ../../resources/pages/homePage.robot
Resource  ../../resources/pages/loginPage.robot

Test Setup  Setup Environment
Test Teardown  End Tests

*** Test Cases ***

Numero 1.Navigate to Books
  [Documentation]  Abrir página de una categoria de producto (Books)
  [Tags]  no regression
  Given Open Browser To Home Page
  When Navigate To Books Page

Numero 2.Navigate to Computers
  [Documentation]  Abrir página de una categoria de producto (Computers)
  [Tags]  no regression
  Given Open Browser To Home Page
  When Navigate To Computers Page
