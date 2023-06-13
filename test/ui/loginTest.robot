*** Settings ***
Resource  ../../environment/variables.robot
Resource  ../../resources/pages/homePage.robot
Resource  ../../resources/pages/loginPage.robot

Test Setup  Setup Environment
Test Teardown  End Tests

*** Test Cases ***

Login correcto
  [Documentation]  login ok with correct user
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With johndoe@dummyweb.com And Tosca1234!
  Then Welcome Page Is Displayed

Login con email incorrecto
  [Documentation]  login with a name in gmail
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With pablo And Tosca1234!
  Then Error In Email

Login con password vacio
  [Documentation]  login without a password
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With johndoe@dummyweb.com And ${EMPTY}
  Then Error With Missing Field

Login con usuario vacio
  [Documentation]  login without a user
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With ${EMPTY} And Tosca1234!
  Then Error With Missing Field

Login con usuario y password no registardos
  [Documentation]  login with invalid user and password
  [Tags]  no regression
  Given Open Browser To Login Page
  When Login With pablo@gmail.com And nocredenciales
  Then Error With Missing Field