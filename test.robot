*** Settings ***
Documentation        Test API TypeForm
Library    RequestsLibrary
Resource             keywords.robot
Resource             variavel.robot


*** Test Cases ***
Deve fazer um Post na API

    Post Api    https://api.typeform.com/forms
 
   

Deve fazer um Get na API

  
    Get Api    https://api.typeform.com/forms
   
    
Deve Atualizar o body
          
    PATCH API    https://api.typeform.com/forms/${form_id}
   

Deve deletar o form
       
       
    Get del Form    https://api.typeform.com/forms/${form_id}
