*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Variables ***

  ${BODYU}    Json Bodyup
  ${BODY}    Json Body
  ${HEADER}   "Bearer ${(CYPRESS_RECORD_KEY)}"  
  
  ${URI}    https://api.typeform.com
  Set Suite Variable       ${HEADER}

*** Test Cases ***
Deve fazer um Post na API

    Post Api    https://api.typeform.com/forms   Bearer ${CYPRESS_RECORD_KEY}    ${BODY}
 
   

Deve fazer um Get na API
         
    Get Api    https://api.typeform.com/forms    Bearer ${CYPRESS_RECORD_KEY}
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}   Bearer ${CYPRESS_RECORD_KEY}     ${BODYU}
   

Teste
       
    Get All Del    https://api.typeform.com/forms     Bearer ${CYPRESS_RECORD_KEY}


*** Keywords ***
Get del Form
    [Arguments]    ${U}    ${H}
    ${response}    DELETE    ${U}     headers=${H}  

Get Api
    [Arguments]       ${U}    ${H}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}    Set Variable    ${response.json()}[items][0][id]        
    Log To Console    ${response.json()}
    Set Suite Variable    ${form_id}
    Status Should Be    200

Post Api
    [Arguments]    ${U}   ${H}   ${B}
    ${response}    POST    ${U}    headers=${H}     json=${B}        
    Status Should Be    201    ${response}
    Log To Console    ${response.json()}
    ${form_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${form_id}
    
Get All Del
    [Arguments]       ${U}  ${H}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}  Set Variable     ${response.json()}[items][0][id]       
    Log To Console     ${response.json()}
    Log To Console    ${form_id}
    Set Suite Variable    ${form_id}
PATCH API
    [Arguments]    ${U}  ${H}   ${B}
    ${response}    PATCH    ${U}     headers=${H}  json=${B}

Deve fazer um Del
          
    Get del Form    https://api.typeform.com/forms/${form_id}    ${HEADER}
    
