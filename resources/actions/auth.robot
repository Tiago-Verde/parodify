***Settings***
Documentation       Ações da funcionalidade da autorização/autenticação

***Variables***

${LOGOUT_LINK}                   css=a[href="/users/sign_out"] 

***Keywords***

Open Login Page  
    
    New Browser     ${browser}      ${headless} 
    New Page        https://parodify.herokuapp.com/users/sign_in        
    
Login with

    [Arguments]     ${email}    ${password}

    Fill Text       [id=user_email]         ${email}
    Fill Text       [id=user_password]      ${password}

    Click           css=input[name=commit]

Wait Sign_out Element

     Wait For Elements State     ${LOGOUT_LINK}       visible     20


Alert
    [Arguments]     ${message}

     Get Text        div[class=message-body]      ==    ${message}

Do Logout

    Click                        ${LOGOUT_LINK}
    Wait For Elements State     xpath=//h1[contains(text(), "Se estiver no trem ou onibus")]        visible     20