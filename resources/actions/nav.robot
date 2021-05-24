***Settings***
Documentation       Ações de navegação no site parodify



***Keywords***

Go to Search Page

    Click                        a[href="/search/new"]   
    Wait For Elements State      xpath=//h2[contains(text(), "Buscar")]       visible     20


Go to Sertanejo Category

    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]       visible     20



Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "${artist_name}")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")] 