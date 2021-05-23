***Settings***
Documentation       Testando o player do parodify

#Gancho para tirar screenshot apos cada teste
Test Teardown   Take Screenshot

Resource    ../resources/base.robot

***Test Cases***

Reproduzir paródia Bug de Manhã

    Open Login Page
    Login with      vutu.goes@gmail.com     123789
    Wait For Elements State     css=a[href="/users/sign_out"]       visible     20 
    Click       a[href="/search/new"]   
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]       visible     20
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]       visible     20
    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]
    Click       //h2[contains(text(), "Bug de Manhã")]/../../div[contains(@class, "play")]//a

    Get Style   xpath=//h2[contains(text(), "Bug de Manhã")]/../../..       color       equal       rgb(225, 0, 180)

 



