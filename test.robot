*** Settings ***
Documentation        Test API TypeForm
Library    RequestsLibrary
Resource             keywords.robot
Resource             variavel.robot
Library              ${EXECDIR}/factory/body.py
Library              ${EXECDIR}/factory/header.py
Library              ${EXECDIR}/factory/update.py


*** Test Cases ***
Deve fazer um Post na API
   
  

    Post Api    https://api.typeform.com/forms   headers="Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}"    json=${B}
 
   

Deve fazer um Get na API
         
    Get Api    https://api.typeform.com/forms   headers="Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}"
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}  headers="Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}"     json=${BU}
   

Teste
       
    Get All Del    https://api.typeform.com/forms    headers="Authorization":"Bearer ${{TYPEFORM_ACCESS_TOKEN}}"
