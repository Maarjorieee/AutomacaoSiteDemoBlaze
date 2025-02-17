*** Settings ***
Resource          ../resources/main.robot
Resource          ../resources/pageObject/SimularCompraPage.robot
Test Setup        Dado que acesso o site do DemoBlaze
Test Teardown     Fechar o navegador

*** Test Cases ***
Logar no site da DemoBlaze e realizar uma compra    
    E clico em login
    E preencho os dados do usuário corretamente
    E clico no botão Log in para acessar o sistema
    E clico no link para comprar o Samsung Galaxy S6
    E clico no botão para adicionar ao carrinho
    E clico em Cart
    Quando clico em Place Order
    E preencho o formulário para concluir a compra
    E clico em Purchase
    Entao o modal de conclusão de compra é exibido

Remover itens do carrinho
    E clico em login
    E preencho os dados do usuário corretamente
    E clico no botão Log in para acessar o sistema
    E clico no link para comprar o Samsung Galaxy S6
    E clico no botão para adicionar ao carrinho
    E clico em Cart
    Quando clico em Delete
    Então o produto é removido do carrinho