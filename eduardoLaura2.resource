*** Settings ***
Library   SeleniumLibrary

#EDUARDO SERODIO /  LAURA DE FREITAS

#SEGUNDO CASO DE TESTING

*** Variables ***

#INICIANDO PROCESSO DE COMPRA
${SITE}                   https://demo.spreecommerce.org/
${NAVEGADOR}              Chrome
${SELECIONAR_SESSAO}      css=.col-6 > .homepage-taxon-box .homepage-hpb
${SELECIONAR_PRODUTO}     css=#product_46 .product-component-image
${BOTAO_ADICIONAR}        id=add-to-cart-button
${BOTAO_CHECKOUT}         css=.btn-primary:nth-child(1)

#REALIZANDO LOGIN
${CAMPO_EMAIL}            id=spree_user_email
${EMAIL}                  dudu9090@outlook.com.br
${CAMPO_SENHA}            spree_user_password
${SENHA}                  Paquita234@
${BOTAO_LOGAR}            name=commit

#REALIZANDO CADASTRO USUÁRIO
${CAMPO_PRIMEIRO_NOME}    id=order_bill_address_attributes_firstname
${NOME}                   Eduardo
${CAMPO_ULTIMO_NOME}      id=order_bill_address_attributes_lastname
${SOBRENOME}              Serodio
${CAMPO_ENDERECO}         id=order_bill_address_attributes_address1
${ENDERECO}               251 Park Avenue S
${CAMPO_CIDADE}           id=order_bill_address_attributes_city
${CIDADE}                 New York - NY
${CAMPO_CEP}              id=order_bill_address_attributes_zipcode
${CEP}                    10022
${CAMPO_CELULAR}          id=order_bill_address_attributes_phone
${CELULAR}                11996184038
${BOTAO_SALVAR}           name=commit

#REALIZANDO CADASTRO DO CARTAO 
${CAMPO_NOME_CARTAO}      id=name_on_card
${NOME_CARTAO}            Eduardo Seorodio
${CAMPO_NUMERO_CARTAO}    id=card_number
${NUMERO_CARTAO}          5467 1814 7119 8682
${CAMPO_DATA_VENCIMENTO}  id=card_expiry
${DATA_VENCIMENTO}        14/11/2024
${CAMPO_CVV}              id=card_code
${CVV}                    930

${BOTAO_PLACE_ORDER}      name=commit


*** Keywords ***  
Abrir site
  Open Browser    ${SITE}                   ${NAVEGADOR}
  Maximize Browser Window


Selecionar sessao
  Click Element   ${SELECIONAR_SESSAO} 
  Sleep  10
 
Selecionar produto
  Click Element   ${SELECIONAR_PRODUTO} 
  Sleep  9

Adicionar produto ao carrinho
  Click Element   ${BOTAO_ADICIONAR}
  Sleep  8

Checkout
  Click Element   ${BOTAO_CHECKOUT}
  Sleep  7 

Login
  Input Text       ${CAMPO_EMAIL}            ${EMAIL}
  Input Password   ${CAMPO_SENHA}            ${SENHA}
  Click Element    ${BOTAO_LOGAR} 
  Sleep  6

Preencher dados de “billing address” e clicar em “Save and Continue”
  Input Text       ${CAMPO_PRIMEIRO_NOME}    ${NOME} 
  Input Text       ${CAMPO_ULTIMO_NOME}      ${SOBRENOME}
  Input Text       ${CAMPO_ENDERECO}         ${ENDERECO}
  Input Text       ${CAMPO_CIDADE}           ${CIDADE} 
  Input Text       ${CAMPO_CEP}              ${CEP}
  Input Text       ${CAMPO_CELULAR}          ${CELULAR}
  Click Element    ${BOTAO_SALVAR}
  Sleep  5

Selecionar “frete” e clicar em “Save and Continue”
  Click Element    ${BOTAO_SALVAR}
  Sleep  4

Preencher dados do cartão de crédito, clicar em “Save and Continue”  
  Input Text       ${CAMPO_NOME_CARTAO}      ${NOME_CARTAO}
  Input Text       ${CAMPO_NUMERO_CARTAO}    ${NUMERO_CARTAO}
  Input Text       ${CAMPO_DATA_VENCIMENTO}  ${DATA_VENCIMENTO} 
  Input Text       ${CAMPO_CVV}              ${CVV}
  Sleep  3

Checar informações e clicar em “place order”
  Click Element    ${BOTAO_PLACE_ORDER}