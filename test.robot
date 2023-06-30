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

${H}   "$CYPRESS_RECORD_KEY"  
Set Suite Variable       ${H}

*** Test Cases ***
Deve fazer um Post na API

    Post Api    https://api.typeform.com/forms   ${H}   ${B}
 
   

Deve fazer um Get na API
         
    Get Api    https://api.typeform.com/forms  ${H}
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}    ${H}     ${BU}
   

Teste
       
    Get All Del    https://api.typeform.com/forms   ${H}

Deve fazer um Del
          
    Get del Form    https://api.typeform.com/forms/${form_id}    ${H}
    
