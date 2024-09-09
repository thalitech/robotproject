*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${HOME_FIELD_SEUNOME}       name=your-name
${HOME_FIELD_EMAIL}		    name=your-email
${HOME_FIELD_ASSUNTO}		name=your-subject
${HOME_FIELD_MENSAGEM}		name=your-message
${HOME_BTN_ENVIAR}          xpath=//input[@value='Enviar']

*** Keywords ***
Visualizar campos do formulário de contato
    Wait Until Element Is Visible    ${HOME_FIELD_SEUNOME}
	Wait Until Element Is Visible    ${HOME_FIELD_EMAIL}		    
    Wait Until Element Is Visible    ${HOME_FIELD_ASSUNTO}		
    Wait Until Element Is Visible    ${HOME_FIELD_MENSAGEM}
    
Preencher campos do formulário de contato
	Input Text     ${HOME_FIELD_SEUNOME}    Thalita Bernardes
	${EMAIL}       Generate Random String
	Input Text     ${HOME_FIELD_EMAIL}      ${EMAIL}@testerobot.com
	Input Text     ${HOME_FIELD_ASSUNTO}    Assunto de Teste
	Input Text     ${HOME_FIELD_MENSAGEM}   Mensagem de Teste!
	
Enviar formulário de contato
	Click Element      ${HOME_BTN_ENVIAR} 