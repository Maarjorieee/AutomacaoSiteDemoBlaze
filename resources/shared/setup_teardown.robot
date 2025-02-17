*** Settings ***
Resource          ../main.robot
Library    SeleniumLibrary

*** Keywords ***
Dado que acesso o site do DemoBlaze
    Open Browser    url=https://www.demoblaze.com/    browser=firefox
    Maximize Browser Window


Fechar o navegador
    Close Browser