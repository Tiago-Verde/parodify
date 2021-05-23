***Settings***
Documentation       Testando o player do parodify

Library     Browser

Resource    ../resources/base.robot

***Test Cases***

Reproduzir paródia Bug de Manhã

    Open Login Page
    Login with      vutu.goes@gmail.com     123789
    Wait For Elements State     css=a[href="/users/sign_out"]       visible     20 
    Click       a[href="/search/new"]   
    Get Text    css=h2      equal       Buscar
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text    css=h2      equal       Sertanejo
    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..


