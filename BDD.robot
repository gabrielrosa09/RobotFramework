*** Settings ***
Library     SeleniumLibrary

*** Variables ***

#Dados do teste
${NomeDaMusica}     One Direction 18

#Variáveis de configuração
${URL}      https://www.youtube.com
${Browser}  chrome

# Elementos
${Input_Pesquisa}       //input[@id="search"]
${Button_Pesquisa}      //button[@id="search-icon-legacy"]
${Primeiro}             (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}                //div[@class="yt-spec-touch-feedback-shape__fill"]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}  ${Browser}

Quando eu digito o nome da música
    Input Text      ${Input_Pesquisa}   ${NomeDaMusica}

E clico no botão buscar
    Click Element   ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible   ${Primeiro}     10
    Click Element   ${Primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible   ${Prova}        10
    Element Should Be Visible   ${Prova}
    Sleep   1s
    Close Browser

*** Test Cases ***
Cenário 1: Executar vídeo no site do youtube
    Dado que eu acesso o site do youtube
    Quando eu digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado