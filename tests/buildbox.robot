***Settings***
Resource                ../resource/Resource.robot
Test Setup              Abrir navegador
Test Teardown           Fechar navegador

***Test Case***

Caso de Teste 01: Login válido
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in 
 
Caso de Teste 02: Login inválido
    Acessar página de login do site
    Digitar e-mail ou senha inválidos
    Clicar no botão de log-in 
    Deve permanecer na página de login

Caso de Teste 03: Iniciar nova atividade
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in
    Clicar no botão de start

Caso de Teste 04: Registrar fim de atividade
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in
    Clicar no botão Stop

Caso de Teste 05: Exibir detalhes da atividade
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in
    Clica no botão de "Pasta" da atividade

Caso de Teste 06: Editar usuário
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in
    Acesar tela de edição do usuário
    Adiciona novo nome 
    Clicar no botão save 

Caso de Teste 07: Acessar página de login do site
    Acessar página de login do site
    Digitar e-mail e senha válidos
    Clicar no botão de log-in
    Clicar no botão sign out
    Página incial deve ser apresentada 
# **Keywords***
