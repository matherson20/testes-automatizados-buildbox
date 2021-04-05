**Settings***
Library             SeleniumLibrary 

***Variables***
${BROWSER}              chrome
${URL}                  https://tracker.buildbox.com.br/

*** Keywords ***
### Setup e Terdown

Abrir navegador
    Open Browser            ${URL}               ${BROWSER}          

Fechar Navegador
    Close Browser       

Acessar página de login do site
    Title Should Be             Tracker Buildbox 

Digitar ${EMAIL} e ${SENHA} válidos
    Input Text      id:email               tester.buildbox@gmail.com
    Input Text      id:password            Teste@123

Digitar ${EMAIL} ou ${SENHA} inválidos
    Input Text                             id:email            tester.buildbox@gmail.com
    Input Text                             id:password         Teste@1234
   
Clicar no botão de log-in 
    Click Button        id:btnLogin 

Deve permanecer na página de login
    Wait Until Element Is Visible          id:email 
    
Página incial deve ser apresentada             
    Wait Until Element Is Visible          xpath://*[@id="root"]//img[@class='logo']

Clicar no botão de start
    Wait Until Element Is Visible           xpath://*[@id="root"]//button[@class='tracker-btn ']
    Click Button                            xpath://*[@id="root"]//button[@class='tracker-btn ']
    Wait Until Element Is Visible           xpath://*[@id="root"]//button[@class='tracker-btn active']

Clicar no botão Stop
    sleep                                   60
    Wait Until Element Is Visible           xpath://*[@id="root"]//button[@class='tracker-btn active']
    Click Button                            xpath://*[@id="root"]//button[@class='tracker-btn active']
    Wait Until Element Is Visible           //*[@id="root"]//h3

Clica no botão de "Pasta" da atividade                   
    Wait Until Element Is Visible           css:#root > section > main > div > div > div:nth-child(2) > div > div > div.rt-table > div.rt-tbody > div:nth-child(1) > div > div.rt-td.rt-expandable > svg
    Click Element                           css:#root > section > main > div > div > div:nth-child(2) > div > div > div.rt-table > div.rt-tbody > div:nth-child(1) > div > div.rt-td.rt-expandable > svg
    sleep                                   4
    Wait Until Element Is Visible           xpath://*[@id="root"]//ul[@class='table-body']

  
Acesar tela de edição do usuário  
    Wait Until Element Is Visible           xpath://*[@id="root"]//a[@class='profile-img']
    Click Element                           xpath://*[@id="root"]//a[@class='profile-img']

Adiciona novo nome
    Input Text                              id:name                                     Matherson Antonio

Clicar no botão save 
    Wait Until Element Is Visible           xpath://*[@id="root"]//button[@class='btn-primary']
    Click Element                           xpath://*[@id="root"]//button[@class='btn-primary']

Clicar no botão sign out
    Wait Until Element Is Visible           xpath://*[@id="root"]//li[@class='logout']
    Click Element                           xpath://*[@id="root"]//li[@class='logout']
    sleep                                   3