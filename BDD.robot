*** Settings ***
Library     SeleniumLibrary

*** Variables ***

#Dados do teste
${NomeDaMusica}     Ariana Grande Positions

#Variáveis de configuração
${URL}      https://www.youtube.com
${Browser}  chrome

# Elementos
${Input_Pesquisa}       //input[@id="search"]
${Button_Pesquisa}      //button[@id="search-icon-legacy"]

//yt-formatted-string[@class="style-scope ytd-video-renderer"]
*** Keywords ***
Dado que eu acesso o site do youtube

Quando eu digito o nome da música

E clico no botão buscar

E clico na primeira opção da lista

Então o vídeo é executado

*** Test Cases ***
Cenário 1: Executar vídeo no site do youtube
    Dado que eu acesso o site do youtube
    Quando eu digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado