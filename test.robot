*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Variables ***

${BU}    Json Bodyup
${B}    Json Body

  
${URI}    https://api.typeform.com

${H}   "Bearer $CYPRESS_RECORD_KEY"  
Set Suite Variable       ${H}

*** Test Cases ***
Deve fazer um Post na API

    Post Api    https://api.typeform.com/forms   "Bearer $CYPRESS_RECORD_KEY"    ${B}
 
   

Deve fazer um Get na API
         
    Get Api    https://api.typeform.com/forms  "Bearer $CYPRESS_RECORD_KEY" 
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}   "Bearer $CYPRESS_RECORD_KEY"      ${BU}
   

Teste
       
    Get All Del    https://api.typeform.com/forms   "Bearer $CYPRESS_RECORD_KEY" 

Deve fazer um Del
          
    Get del Form    https://api.typeform.com/forms/${form_id}    "Bearer $CYPRESS_RECORD_KEY" 
    
