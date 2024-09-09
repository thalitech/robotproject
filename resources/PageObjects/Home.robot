*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${HOME_URL}                 https://atelieafetivodaro.com/
${HOME_TITLE}               Ateliê Afetivo da Rô – Crochetaria e acessórios para você!
${MAIN_MENU_CONTATO}        xpath=//span[normalize-space()='Contato']

*** Keywords ***
#### Ações
Acessar a página home do site
    Go To                                ${HOME_URL}
    Title Should Be                      ${HOME_TITLE}

Acessar a página contato do site
    Click Element                       ${MAIN_MENU_CONTATO}
