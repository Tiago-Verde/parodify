***Settings***

Documentation   Ações da página de login


***Keywords***


Open Login Page  
    Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium

Login with

    [Arguments]     ${email}    ${password}

    Fill Text       [id=user_email]         ${email}
    Fill Text       [id=user_password]      ${password}

    Click           css=input[name=commit]

Alert
    [Arguments]     ${message}

     Get Text        div[class=message-body]      ==    ${message}