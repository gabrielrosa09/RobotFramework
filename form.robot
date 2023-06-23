*** Settings ***
Library         SeleniumLibrary
Library         BuiltIn

# Xpath quando não se tem marcação //option[contains(text(), "Pastel")]
*** Variables ***
${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"] 
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"] 
${button_submit}        //button[@name="submit"]


*** Keywords ***

abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation  chrome

preencher campos
    Input Text      ${input_name}           Gabriel
    Input Text      ${input_phone}          992475331
    Input Text      ${input_email}          gabriel@teste.com
    Input Text      ${input_password}       123456
    Input Text      ${textarea_address}     xxxxxxxxxxxxxxxx

clicar em submit
    Sleep           1s
    Click Element   ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher Formulário
    abrir navegador e acessar site
    preencher campos
    clicar em submit
    Sleep   5s
    fechar navegador 
