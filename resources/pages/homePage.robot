*** Settings ***
Library  SeleniumLibrary
Resource  ../../resources/sections/headerHomePage.robot
Resource  ../../resources/sections/subheaderHomePage.robot

*** Keywords ***

Open Browser To Login Page

  Given Open Browser and Confirm with Logo
  Then Click in the Link of Login

Navigate To ${category} Page
  IF  "${category}" == "Books"
        Click Link of Books
  ELSE IF  "${category}" == "Computers"
        Click Link of Computers
  ELSE IF  "${category}" == "Desktops"
        Click Link of Desktops
  ELSE IF  "${category}" == "Notebooks"
        Click Link of Notebooks
  ELSE IF  "${category}" == "Accessories"
        Click Link of Accessories
  ELSE IF  "${category}" == "Electronics"
        Click Link of Electronics
  ELSE IF  "${category}" == "Camera, photo"
        Click Link of Camera, photo
  ELSE IF  "${category}" == "Cell phones"
        Click Link of Cell phones
  ELSE IF  "${category}" == "Apparel & Shoes"
        Click Link of Apparel & Shoes
  ELSE IF  "${category}" == "Digital downloads"
        Click Link of Digital downloads
  ELSE IF  "${category}" == "Jewelry"
        Click Link of Jewelry
  ELSE IF  "${category}" == "Gift Cards"
        Click Link of Gift Cards
  ELSE
        Log  "No es un producto existente"
  END


  ${checkproductPage}  Catenate  SEPARATOR=  xpath:.//h1[text()='${category}']
  Wait Until Element Is Visible  ${checkproductPage}
