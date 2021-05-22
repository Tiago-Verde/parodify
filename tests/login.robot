***Settings***
Documentation   Testes de página login

Library     Browser

#Gancho para tirar screenshot apos cada teste
Test Teardown   Take Screenshot

Resource        ../resources/base.robot


***Test Cases***
Login com sucesso

    Open Login Page  
    Login with  vutu.goes@gmail.com  123789
    Wait For Elements State     css=a[href="/users/sign_out"]       visible     10  

  
Senha incorreta

    Open Login Page  
    Login with  vutu.goes@gmail.com  123456
    Wait For Elements State     css=label[for=user_email]       visible     20
    Alert  Opps! Dados de acesso incorretos!      

    
Email incorreto

    Open Login Page 
    Login with  teste@teste.com.br  123789
    Wait For Elements State     css=label[for=user_email]       visible     20
    Alert  Opps! Dados de acesso incorretos! 

    
Campo e-mail vazio

    Open Login Page  
    Login with  ${EMPTY}    123789
    Wait For Elements State     css=label[for=user_email]       visible     20
    Alert  Opps! Dados de acesso incorretos! 

    
Campo senha vazio

    Open Login Page  
    Login with  vutu.goes@gmail.com     ${EMPTY}
    Wait For Elements State     css=label[for=user_email]       visible     20
    Alert  Opps! Dados de acesso incorretos! 

    
Campo Senha e Email vazios

    Open Login Page  
    Login with  ${EMPTY}    ${EMPTY}
    Wait For Elements State     css=label[for=user_email]       visible     20
    Alert  Opps! Dados de acesso incorretos! 

    

