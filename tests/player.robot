***Settings***
Documentation       Testando o player do parodify

#Gancho para tirar screenshot apos cada teste
Test Teardown   Take Screenshot

Resource    ../resources/base.robot

***Test Cases***

Reproduzir paródia Bug de Manhã

    Open Login Page
    Login with                  vutu.goes@gmail.com     123789
    Wait For Elements State     css=a[href="/users/sign_out"]       visible     20 
    Go to Search Page
    Go to Sertanejo Category
    Open Album From             Marcus e Debug
    Play Song                   Bug de Manhã           
    Song Should Be Playing      Bug de Manhã
    










  


