*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py



*** Test Cases ***
Deve fazer um Post na API

    Post Api    ${URI}/forms   "Authorization":"Bearer ${secrets.TYPEFORM_ACCESS_TOKEN)}"   ${B}
 
   

Deve fazer um Get na API
         
    Get Api    ${URI}/forms   "Authorization":"Bearer ${secrets.TYPEFORM_ACCESS_TOKEN}" 
   
    
Deve Atualizar o body
          
    PATCH API    ${URI}/forms/${form_id}    "Authorization":"Bearer ${secrets.TYPEFORM_ACCESS_TOKEN}"     ${BU}
   

Teste
       
    Get All Del    ${URI}/forms   "Authorization":"Bearer ${secrets.TYPEFORM_ACCESS_TOKEN}" 

Deve fazer um Del
          
    Get del Form    ${URI}/forms/${form_id}      "Authorization":"Bearer ${Cypress.env('TYPEFORM_ACCESS_TOKEN')}" 
    
