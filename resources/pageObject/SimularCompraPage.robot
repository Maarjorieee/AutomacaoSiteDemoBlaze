*** Settings ***
Resource  ../main.robot
Resource  ../elements/elements.robot

*** Keywords ***
E clico em login
    Wait Until Element Is Visible    ${LOGIN}    timeout=20s
    Click Element    ${LOGIN}

E preencho os dados do usuario corretamente    
    Click Element    ${CAMPO_USERNAME}
    Input Text       ${CAMPO_USERNAME}     Marj
    Click Element    ${CAMPO_SENHA}
    Input Password   ${CAMPO_SENHA}        1234  

E clico no botao Log in para acessar o sistema
    Click Button    ${BTN_LOGIN}

E clico no link para comprar o Samsung Galaxy S6
   Sleep    5s
   Click Element    ${LINK_COMPRAR_SAMSUNG}

E clico no botao para adicionar ao carrinho
    Sleep    5s
    Click Element    ${BTN_ADICIONAR_AO_CARRINHO}
    Handle Alert

E clico em Cart
    Click Element    ${CART}

Quando clico em Place Order
    Click Button    ${BTN_FINALIZAR_COMPRA}

E preencho o formulario para concluir a compra
    Click Element   ${CAMPO_NAME}
    Input Text      ${CAMPO_NAME}             Marjorie
    Click Element   ${CAMPO_COUNTRY}
    Input Text      ${CAMPO_COUNTRY}          Brasil
    Click Element   ${CAMPO_CITY}
    Input Text      ${CAMPO_CITY}             Guarujá
    Click Element   ${CAMPO_CREDIT_CARD}
    Input Text      ${CAMPO_CREDIT_CARD}      12123131
    Click Element   ${CAMPO_MONTH}
    Input Text      ${CAMPO_MONTH}            Fevereiro
    Click Element   ${CAMPO_YEAR}
    Input Text      ${CAMPO_YEAR}             2025

E clico em Purchase
    Click Button    ${BTN_PURCHASE}
Entao o modal de conclusão de compra é exibido
    Sleep    5s
    SeleniumLibrary.Element Text Should Be    ${TXT_CONCLUSAO_COMPRA}    Thank you for your purchase!