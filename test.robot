*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py

    
   
*** Test Cases ***
Deve fazer um Post na API
    
    Post Api    ${URI}/forms   ${TYPEFORM_ACCESS_TOKEN}    Json Body
 
   

Deve fazer um Get na API
     
    Get Api    ${URI}/forms    ${TYPEFORM_ACCESS_TOKEN}
   
    
Deve Atualizar o body
   
    PATCH API    ${URI}/forms/${form_id}    ${TYPEFORM_ACCESS_TOKEN}    Json Bodyup
   

Teste
    Get All Del    ${URI}/forms    ${TYPEFORM_ACCESS_TOKEN}

Deve fazer um Del
    Get del Form    ${URI}/forms/${form_id}       ${TYPEFORM_ACCESS_TOKEN}
    
