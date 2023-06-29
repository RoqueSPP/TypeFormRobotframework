*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Test Cases ***
Deve fazer um Post na API
    ${HEADER}    TYPEFORM_ACCESS_TOKEN
    ${BODY}    Json Body
    Post Api    ${URI}/forms   ${HEADER}    ${BODY}

Deve fazer um Get na API
    ${HEADER}    TYPEFORM_ACCESS_TOKEN
    Get Api    ${URI}/forms    ${HEADER}
Deve Atualizar o body
     ${HEADER}    TYPEFORM_ACCESS_TOKEN
    ${BODYU}    Json Bodyup
    PATCH API    ${URI}/forms/${form_id}    ${HEADER}    ${BODYU}

Teste 
    ${HEADER}    TYPEFORM_ACCESS_TOKEN
    Get All Del    ${URI}/forms    ${HEADER}

Deve fazer um Del
    ${HEADER}    TYPEFORM_ACCESS_TOKEN
    #Delete Forms    ${URI}forms    ${HEADER}
    Get del Form    ${URI}/forms/${form_id}       ${HEADER}
