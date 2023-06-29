*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py

    
   
*** Test Cases ***
Deve fazer um Post na API
     ${H}     json header
     ${B}     Json Body
    Post Api    ${URI}/forms   ${H}   ${B}
 
   

Deve fazer um Get na API
     ${H}    json header
    Get Api    ${URI}/forms    ${H}
   
    
Deve Atualizar o body
     ${H}    json haeder
    ${BU}    Json Bodyup
    PATCH API    ${URI}/forms/${form_id}    ${H}    ${BU}
   

Teste
    ${H}    json header
    Get All Del    ${URI}/forms    ${H}

Deve fazer um Del
    ${H}    json header
    Get del Form    ${URI}/forms/${form_id}       ${H}
    
