*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Variables ***
${H}   "Authorization":"Bearer $CYPRESS_RECORD_KEY"  
Set Suite Variable       ${H}

*** Test Cases ***
Deve fazer um Post na API

    Post Api    ${URI}/forms   ${H}   ${B}
 
   

Deve fazer um Get na API
         
    Get Api    ${URI}/forms  ${H}
   
    
Deve Atualizar o body
          
    PATCH API    ${URI}/forms/${form_id}    ${H}     ${BU}
   

Teste
       
    Get All Del    ${URI}/forms   ${H}

Deve fazer um Del
          
    Get del Form    ${URI}/forms/${form_id}    ${H}
    
