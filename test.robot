*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Test Cases ***
Deve fazer um Post na API
    Post Api    ${URI}/forms   ${HEADER}    ${BODY}
    ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
    ${BODY}    Json Body
   

Deve fazer um Get na API
    Get Api    ${URI}/forms    ${HEADER}
    ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
    
Deve Atualizar o body
    PATCH API    ${URI}/forms/${form_id}    ${HEADER}    ${BODYU}
     ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
     ${BODYU}    Json Bodyup
  

Teste 
    Get All Del    ${URI}/forms    ${HEADER}
    ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
    Get All Del    ${URI}/forms    ${HEADER}

Deve fazer um Del
    Get del Form    ${URI}/forms/${form_id}       ${HEADER}
    ${HEADER}    ${TYPEFORM_ACCESS_TOKEN}
    #Delete Forms    ${URI}forms    ${HEADER}
    
