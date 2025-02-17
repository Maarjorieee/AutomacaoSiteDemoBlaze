*** Settings ***
Resource  ../main.robot
Resource  ../elements/elements.robot

*** Keywords ***
E preencho os dados de senha do usuário incorretamente
    Click Element    ${CAMPO_USERNAME}
    Input Text       ${CAMPO_USERNAME}     Marj
    Click Element    ${CAMPO_SENHA}
    Input Password   ${CAMPO_SENHA}        1010

Então o alerta de Wrong password deverá ser exibido
    Handle Alert

E preencho os dados do nome do usuário incorretamente
    Click Element    ${CAMPO_USERNAME}
    Input Text       ${CAMPO_USERNAME}     Usuário incorreto
    Click Element    ${CAMPO_SENHA}
    Input Password   ${CAMPO_SENHA}        1234

Então o alerta de User does not exist deverá ser exibido
    Handle Alert