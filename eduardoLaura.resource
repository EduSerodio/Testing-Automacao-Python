*** Settings ***
Library   SeleniumLibrary

#EDUARDO SERODIO /  LAURA DE FREITAS
#PRIMEIRO CASO DE TESTE
*** Variables ***
${SITE}                https://demo.spreecommerce.org/
${NAVEGADOR}           Chrome
${SELECIONAR_SESSAO}   css=.row:nth-child(1) .homepage-hpb
${SELECIONAR_PRODUTO}  css=#product_1 .product-component-image
${BOTAO_ADICIONAR}     id=add-to-cart-button
${BOTAO_CHECKOUT}      css=.btn-primary:nth-child(1)

${CAMPO_EMAIL}         id=spree_user_email
${EMAIL}               dudu9090@outlook.com.br
${CAMPO_SENHA}         spree_user_password
${SENHA}               Paquita234@
${BOTAO_LOGAR}         name=commit

${CAMPO_PRIMEIRO_NOME}  id=order_bill_address_attributes_firstname
${NOME}                 Eduardo
${CAMPO_ULTIMO_NOME}    id=order_bill_address_attributes_lastname
${SOBRENOME}            Serodio
${CAMPO_ENDERECO}       id=order_bill_address_attributes_address1
${ENDERECO}             251 Park Avenue S
${CAMPO_CIDADE}         id=order_bill_address_attributes_city
${CIDADE}               New York - NY
${CAMPO_CEP}            id=order_bill_address_attributes_zipcode
${CEP}                  10022
${CAMPO_CELULAR}        id=order_bill_address_attributes_phone
${CELULAR}              11996184038
${BOTAO_SALVAR}         name=commit


*** Keywords ***  
Abrir site
  Open Browser  ${SITE}   ${NAVEGADOR}
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
  Input Text      ${CAMPO_EMAIL}            ${EMAIL}
  Input Password  ${CAMPO_SENHA}            ${SENHA}
  Click Element   ${BOTAO_LOGAR} 
  Sleep  6

Preencher dados de “billing address” e clicar em “Save and Continue”
  Input Text       ${CAMPO_PRIMEIRO_NOME}   ${NOME} 
  Input Text       ${CAMPO_ULTIMO_NOME}     ${SOBRENOME}
  Input Text       ${CAMPO_ENDERECO}        ${ENDERECO}
  Input Text       ${CAMPO_CIDADE}          ${CIDADE} 
  Input Text       ${CAMPO_CEP}             ${CEP}
  Input Text       ${CAMPO_CELULAR}         ${CELULAR}
  Click Element    ${BOTAO_SALVAR}