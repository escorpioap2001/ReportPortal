*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${addToCartButton}  xpath:.//input[@class="button-1 add-to-cart-button"]
${productQuantityInput}  xpath:.//input[@class="qty-input"]
${addToCartSuccessMessage}  xpath:.//div[@class="bar-notification success"]
# Body
${productsList}  xpath:.//h2[@class="product-title"]/a
# Header
${shoppingCartQuantity}  xpath:.//li[@id="topcartlink"]/a[@class="ico-cart"]/span[@class='cart-qty']
*** Keywords ***

Select ${quantity} ${product} And Add it To Shopping Cart
  Page Should Contain Element  ${productsList}
  #Check that there is more than one product displayed
  ${count}=  Get Element Count  ${productsList}
  Should Be True   ${count} > 0
  ${productLink}  Catenate  SEPARATOR=  xpath://h2[@class='product-title']/a[text()='${product}']
  Click Element  ${productLink}
  ${productDetailsCell}  Catenate  SEPARATOR=  xpath:.//h1[contains(text(),'${product}')]
  Wait Until Element Is Visible  ${productDetailsCell}

  ${quantityBeforeText}  Get Text  ${shoppingCartQuantity}
  ${quantityBeforeText}  Remove String  ${quantityBeforeText}  (
  ${quantityBeforeText}  Remove String  ${quantityBeforeText}  )
  ${quantityBefore}  Convert To Integer  ${quantityBeforeText}
  ${quantity}  Convert To Integer  ${quantity}
  ${expectedQuantityAfter}  Evaluate  ${quantityBefore} + ${quantity}

  # Add ${quantity} ${product} to cart if the Add To Cart button is visible
  ${passed}  Run Keyword And Return Status  Element Should Be Visible    ${addToCartButton}
#  Run Keyword If  ${passed}  Scroll Element Into View  ${productQuantityInput}  ELSE  Log  ${product} sold out
  Run Keyword If  ${passed}  Clear Element Text  ${productQuantityInput}
  Run Keyword If  ${passed}  Input Text  ${productQuantityInput}  ${quantity}
  Run Keyword If  ${passed}  Click Element  ${addToCartButton}
  Run Keyword If  ${passed}  Sleep  2
  Run Keyword If  ${passed}  SeleniumLibrary.Wait Until Element Is Visible  ${addToCartSuccessMessage}
  Run Keyword If  ${passed}  Scroll Element Into View  ${shoppingCartQuantity}
  ${quantityAfterText}  Get Text  ${shoppingCartQuantity}
  ${quantityAfterText}  Remove String  ${quantityAfterText}  )
  ${quantityAfterText}  Remove String  ${quantityAfterText}  (
  ${quantityAfter}  Convert To Integer  ${quantityAfterText}
  Run Keyword If  ${passed}  Should Be Equal As Numbers  ${quantityAfter}  ${expectedQuantityAfter}
  Run Keyword If  ${passed} == False  Should Be Equal As Numbers  ${quantityAfter}  ${quantityBefore}