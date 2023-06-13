*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${url_API}  http://specialisatieopleidingv2.northeurope.cloudapp.azure.com/api/rest
${productId}  55

*** Keywords ***
Get Pet
  ${url}  Catenate  ${url_API}/products/${productId}
  Create Session  GetPet  ${url}
  ${headers}  create dictionary  X-Oc-Merchant-Id=opleiding
  ${headers}  set variable  ${headers}
  ${response}  GET On Session  getPet  url=${url}  headers=${headers}
  Log  ${response.content}
  ${responseBody}  convert to string  ${response.content}
  Log  ${responseBody}