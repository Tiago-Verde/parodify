***Settings***
Documentation   Testes de página login

#Gancho para tirar screenshot apos cada teste
Test Teardown   Take Screenshot

Resource        ../resources/base.robot


***Test Cases***
Login com sucesso

    Open Login Page  
    Login with  vutu.goes@gmail.com  123789
    Wait Sign_out Element

  
Senha incorreta

    Open Login Page  
    Wait For Elements State     css=label[for=user_email]       visible     20
    Login with  vutu.goes@gmail.com  123456
    Alert  Opps! Dados de acesso incorretos!      

    
Email incorreto

    Open Login Page 
    Wait For Elements State     css=label[for=user_email]       visible     20
    Login with  teste@teste.com.br  123789
    Alert  Opps! Dados de acesso incorretos! 

    
Campo e-mail vazio

    Open Login Page
    Wait For Elements State     css=label[for=user_email]       visible     20  
    Login with  ${EMPTY}    123789
    Alert  Opps! Dados de acesso incorretos! 

    
Campo senha vazio

    Open Login Page  
    Wait For Elements State     css=label[for=user_email]       visible     20
    Login with  vutu.goes@gmail.com     ${EMPTY}
    Alert  Opps! Dados de acesso incorretos! 

    
Campo Senha e Email vazios

    Open Login Page  
    Wait For Elements State     css=label[for=user_email]       visible     20
    Login with  ${EMPTY}    ${EMPTY}
    Alert  Opps! Dados de acesso incorretos! 

Faz Logout

    Open Login Page
    Login with  vutu.goes@gmail.com  123789
    Wait Sign_out Element
    Do Logout
   
    

