*** Settings ***
Library         SeleniumLibrary
Library         BuiltIn

*** Variables ***
${variavel1}    teste
${variavel2}    hhhh
${variavel3}    155455

*** Keywords ***
abrir site da google
    Open Browser  https://www.google.com.br/  chrome  

abrir site da globo
    Open Browser  https://www.globo.com/  chrome

fechar navegador 
    Close Browser

tempo
    Sleep   5s

*** Test Cases ***
Cenário 1: Teste de abrir navegador
    abrir site da google
    tempo
    fechar navegador

Cenário 2: Teste de abrir globo
    abrir site da globo
    tempo
    fechar navegador