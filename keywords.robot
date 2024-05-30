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
    [Arguments]    ${U}
    ${response}    DELETE    ${U}     headers=${SECRET}

Get Api
    ${BU}   Json Bodyup
    ${B}    Json Body
    [Arguments]       ${U}
    ${response}    GET    ${U}    headers=${SECRET}
    ${form_id}    Set Variable    ${response.json()}[items][0][id]        
    Log To Console    ${response.json()}
    Set Suite Variable    ${form_id}
    Status Should Be    200

Post Api
    ${BU}   Json Bodyup
    ${B}    Json Body
    [Arguments]    ${U}
    ${response}    POST    ${U}    headers=${SECRET}     json=${B}  
    Log To Console    ${SECRET}
    Status Should Be    201    ${response}
    Log To Console    ${response.json()}
    ${form_id}    Set Variable    ${response.json()}[id]
    Set Suite Variable    ${form_id}
    
Get All Del
    ${BU}   Json Bodyup
    ${B}    Json Body
    [Arguments]       ${U}
    ${response}    GET    ${U}    headers=${SECRET}
    ${form_id}  Set Variable     ${response.json()}[items][0][id]       
    Log To Console     ${response.json()}
    Log To Console    ${form_id}
    Set Suite Variable    ${form_id}
PATCH API
    ${BU}   Json Bodyup
    ${B}    Json Body
    [Arguments]    ${U}
    ${response}    PATCH    ${U}     headers=${SECRET}  json=${BU}
