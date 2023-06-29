*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py

***Variables***
   ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
    ${BODY}    Json Body
    ${BODYU}    Json Bodyup
*** Test Cases ***
Deve fazer um Post na API
    Post Api    ${URI}/forms   ${HEADER}    ${BODY}
 
   

Deve fazer um Get na API
    Get Api    ${URI}/forms    ${HEADER}
   
    
Deve Atualizar o body
    PATCH API    ${URI}/forms/${form_id}    ${HEADER}    ${BODYU}
  

Teste 
    Get All Del    ${URI}/forms    ${HEADER}

Deve fazer um Del
    Get del Form    ${URI}/forms/${form_id}       ${HEADER}
    #Delete Forms    ${URI}forms    ${HEADER}
    
