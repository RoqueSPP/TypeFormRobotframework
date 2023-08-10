*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Get del Form
    ${H}    "Authorization":"Bearer TYPEFORM_ACCESS_TOKEN"
    [Arguments]    ${U}    ${H}
    ${response}    DELETE    ${U}     headers=${H}  

Get Api
    ${H}    "Authorization":"Bearer TYPEFORM_ACCESS_TOKEN"
    [Arguments]       ${U}    ${H}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}    Set Variable    ${response.json()}[items][0][id]        
    Log To Console    ${response.json()}
    Set Suite Variable    ${form_id}
    Status Should Be    200

Post Api
    ${H}    "Authorization":"Bearer TYPEFORM_ACCESS_TOKEN"
    [Arguments]    ${U}   ${H}   ${B}
    ${response}    POST    ${U}    headers=${H}     json=${B}        
    Status Should Be    201    ${response}
    Log To Console    ${response.json()}
    ${form_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${form_id}
    
Get All Del
    ${H}    "Authorization":"Bearer TYPEFORM_ACCESS_TOKEN"
    [Arguments]       ${U}  ${H}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}  Set Variable     ${response.json()}[items][0][id]       
    Log To Console     ${response.json()}
    Log To Console    ${form_id}
    Set Suite Variable    ${form_id}
PATCH API
    ${H}    "Authorization":"Bearer TYPEFORM_ACCESS_TOKEN"
    [Arguments]    ${U}  ${H}   ${B}
    ${response}    PATCH    ${U}     headers=${H}  json=${B}
