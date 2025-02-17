*** Settings ***
Resource          ../resources/main.robot
Resource          ../resources/pageObject/SimularCompraPage.robot
Resource          ../resources/pageObject/ValidarMensagensDeErroPage.robot
Test Setup        Dado que acesso o site do DemoBlaze
Test Teardown     Fechar o navegador

*** Test Cases ***
Tentativa de log in inválida por senha incorreta
    E clico em login
    E preencho os dados de senha do usuário incorretamente
    E clico no botão Log in para acessar o sistema
    Então o alerta de Wrong password deverá ser exibido

Tentativa de log in inválida por nome de usuário incorreto
     E clico em login
     E preencho os dados do nome do usuário incorretamente
     E clico no botão Log in para acessar o sistema
     Então o alerta de User does not exist deverá ser exibido
    