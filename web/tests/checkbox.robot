*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Case ***
CN-1 Validando opção utilizando ID
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

CN-2 Validando Checkbox com localizador utilizadno CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron} 
    Checkbox Should Be Selected     ${check_iron} 

CN-3 Validando Checkbox com Xpath da forma correta ;)...
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
