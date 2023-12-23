*** Settings ***
Library    RequestsLibrary
Resource    ./variavel.robot
Library    ./factory/body.py
Library    ./factory/header.py
Library    ./factory/update.py

*** Keywords ***
Get del Form
    ${BU}   Json Bodyup
    ${B}    Json Body
    ${H}    Json header
    [Arguments]    ${U}
    ${response}    DELETE    ${U}     headers=${H}  

Get Api
    ${BU}   Json Bodyup
    ${B}    Json Body
    ${H}    Json header
    [Arguments]       ${U}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}    Set Variable    ${response.json()}[items][0][id]        
    Log To Console    ${response.json()}
    Set Suite Variable    ${form_id}
    Status Should Be    200

Post Api
    ${BU}   Json Bodyup
    ${B}    Json Body
    ${H}    {"Authorization":"Bearer ('ACCESS_TOKEN')"}
    [Arguments]    ${U}
    ${response}    POST    ${U}    headers=${H}     json=${B}        
    Status Should Be    201    ${response}
    Log To Console    ${response.json()}
    ${form_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${form_id}
    
Get All Del
    ${BU}   Json Bodyup
    ${B}    Json Body
    ${H}    Json header
    [Arguments]       ${U}
    ${response}    GET    ${U}    headers=${H}
    ${form_id}  Set Variable     ${response.json()}[items][0][id]       
    Log To Console     ${response.json()}
    Log To Console    ${form_id}
    Set Suite Variable    ${form_id}
PATCH API
    ${BU}   Json Bodyup
    ${B}    Json Body
    ${H}    Json header
    [Arguments]    ${U}
    ${response}    PATCH    ${U}     headers=${H}  json=${BU}
