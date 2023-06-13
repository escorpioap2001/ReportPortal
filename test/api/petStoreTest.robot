*** Settings ***
Resource  ../../environment/variables.robot
Resource  ../../resources/api/apiPetStore.robot

Test Setup  Setup Environment
Test Teardown  End Tests

*** Test Cases ***

Login correcto
  [Documentation]  login ok with correct user
  [Tags]  no regression
  When Get Pet