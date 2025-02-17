*** Settings ***
Resource  ../main.robot

*** Variables ***
${LOGIN}                           id:login2
${CAMPO_USERNAME}                  id:loginusername
${CAMPO_SENHA}                     id:loginpassword
${BTN_LOGIN}                       css:#logInModal > div > div > div.modal-footer > button.btn.btn-primary
${LINK_COMPRAR_SAMSUNG}            xpath://*[@id="tbodyid"]/div[1]/div/div/h4/a
${BTN_ADICIONAR_AO_CARRINHO}       xpath://*[@id="tbodyid"]/div[2]/div/a
${CART}                            id:cartur
${BTN_FINALIZAR_COMPRA}            css:#page-wrapper > div > div.col-lg-1 > button
${CAMPO_NAME}                      id:name
${CAMPO_COUNTRY}                   id:country
${CAMPO_CITY}                      id:city
${CAMPO_CREDIT_CARD}               id:card
${CAMPO_MONTH}                     id:month
${CAMPO_YEAR}                      id:year
${BTN_PURCHASE}                    css:#orderModal > div > div > div.modal-footer > button.btn.btn-primary
${TXT_CONCLUSAO_COMPRA}            css:body > div.sweet-alert.showSweetAlert.visible > h2
${LINK_DELETE}                     xpath://*[@id="tbodyid"]/tr/td[4]/a