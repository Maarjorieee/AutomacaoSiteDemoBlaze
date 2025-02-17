*** Settings ***
Library    SeleniumLibrary

### Shared ### aqui colocamos o que inicia o teste e o que finaliza o teste
Resource    shared/setup_teardown.robot


### Pages ### aqui colocamos o endereco das pagesObjects
Resource     pageObject/SimularCompraPage.robot