*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PageObjects/Home.robot
Resource            ../resources/PageObjects/Contato.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Case ***
Caso de Teste 01: Visualizar formulário
    Home.Acessar a página home do site
    Home.Acessar a página contato do site
    Contato.Visualizar campos do formulário de contato
	Contato.Preencher campos do formulário de contato
	Contato.Enviar formulário de contato
