*** Settings ***
Library  String
Resource  ../../resources/pages/homePage.robot
Resource  ../../resources/pages/loginPage.robot
Resource  ../../resources/pages/productPage.robot
Resource  ../../environment/variables.robot
Test Setup    Setup Environment
Test Teardown    End Tests

*** Keywords ***
*** Test Cases ***
1.0 Add 2 Blue and green Sneaker To Shopping Cart
#    [Tags]  no regression
    [Documentation]  Add Blue and green Sneaker from Apparel and Shoes to Shopping Cart
    Given Open Browser To Login Page
    Given Login with ${username} and ${password}
    And Welcome Page Is Displayed
    When Navigate To Apparel & Shoes Page
    And Select 2 Blue and green Sneaker And Add it To Shopping Cart
    #Then Logout

2.0 Add Casual Golf Belt To Shopping Cart
    [Documentation]  Add Blue Jean from Apparel and Shoes to Shopping Cart
    Given Open Browser To Login Page
    Given Login with ${username} and ${password}
    And Welcome Page Is Displayed
    When Navigate To Apparel & Shoes Page
    And Select 1 Casual Golf Belt And Add it To Shopping Cart
    #Then Logout

3.0 Add Fiction To Shopping Cart
    [Documentation]  Add Fiction from Books to Shopping Cart
    Given Open Browser To Login Page
    Given Login with ${username} and ${password}
    And Welcome Page Is Displayed
    When Navigate To Books Page
    And Select 1 Fiction And Add it To Shopping Cart
    #Then Logout

4.0 Add Denim Short with Rhinestones To Shopping Cart
    [Documentation]  Add Denim Short with Rhinestones from Apparel and Shoes to Shopping Cart
    Given Open Browser To Login Page
    Given Login with ${username} and ${password}
    And Welcome Page Is Displayed
    When Navigate To Apparel & Shoes Page
    And Select 1 Denim Short with Rhinestones And Add it To Shopping Cart
    #Then Logout

5.0 Add 2 Smartphones To Shopping Cart
    [Documentation]  Add Fiction from Books to Shopping Cart
    Given Open Browser To Login Page
    Given Login with ${username} and ${password}
    And Welcome Page Is Displayed
    When Navigate To Cell phones Page
    And Select 2 Smartphone And Add it To Shopping Cart
    #Then Logout
