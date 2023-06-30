*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Variables ***
Set Suite Variable       $CYPRESS_RECORD_KEY
*** Test Cases ***
Deve fazer um Post na API

    Post Api    ${URI}/forms   "Authorization":"Bearer $CYPRESS_RECORD_KEY"   ${B}
 
   

Deve fazer um Get na API
         
    Get Api    ${URI}/forms   "Authorization":"Bearer $CYPRESS_RECORD_KEY"
   
    
Deve Atualizar o body
          
    PATCH API    ${URI}/forms/${form_id}    "Authorization":"Bearer $CYPRESS_RECORD_KEY"     ${BU}
   

Teste
       
    Get All Del    ${URI}/forms   "Authorization":"Bearer $CYPRESS_RECORD_KEY"

Deve fazer um Del
          
    Get del Form    ${URI}/forms/${form_id}    "Authorization":"Bearer $CYPRESS_RECORD_KEY"
    
