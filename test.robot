*** Settings ***
Documentation        Test API TypeForm
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py



*** Test Cases ***
Deve fazer um Post na API
           ${H}    Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}
    Post Api    ${URI}/forms   ${H}   ${B}
 
   

Deve fazer um Get na API
          ${H}    Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}
    Get Api    ${URI}/forms    ${H}
   
    
Deve Atualizar o body
           ${H}    Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}
    PATCH API    ${URI}/forms/${form_id}    ${H}    ${BU}
   

Teste
          ${H}    Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}
    Get All Del    ${URI}/forms    ${H}

Deve fazer um Del
           ${H}    Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}
    Get del Form    ${URI}/forms/${form_id}       ${H}
    
