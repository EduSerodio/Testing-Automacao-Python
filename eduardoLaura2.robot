*** Settings ***
Library   SeleniumLibrary
Resource  eduardoLaura2.resource


*** Test Cases ***

#SEGUNDO CASO DE TESTING (ROUPA FEMININA)
Processo de compra de uma peça feminina/masculina/sportswear no site Spree Demo
  Abrir site
  Selecionar sessao
  Selecionar produto
  Adicionar produto ao carrinho
  Checkout
  Login 
  Preencher dados de “billing address” e clicar em “Save and Continue”
  Selecionar “frete” e clicar em “Save and Continue”
  Preencher dados do cartão de crédito, clicar em “Save and Continue”
  Checar informações e clicar em “place order”


  