*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}     chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
	Open Browser     alias:blank    ${BROWSER}
	
Fechar navegador
	Capture Page Screenshot
	Close Browser