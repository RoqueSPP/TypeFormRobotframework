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
  ${HEADER}   "Bearer $CYPRESS_RECORD_KEY"  
  
  ${URI}    https://api.typeform.com
  Set Suite Variable       ${HEADER}

*** Test Cases ***
Deve fazer um Post na API

    Post Api    https://api.typeform.com/forms   ${HEADER}    ${BODY}
 
   

Deve fazer um Get na API
         
    Get Api    https://api.typeform.com/forms    ${HEADER}
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}   ${HEADER}     ${BODYU}
   

Teste
       
    Get All Del    https://api.typeform.com/forms     ${HEADER}

Deve fazer um Del
          
    Get del Form    https://api.typeform.com/forms/${form_id}    ${HEADER}
    
