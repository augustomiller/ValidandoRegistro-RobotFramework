*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***

CN-1 Selecionando radio button por ID
    Go To                              ${url}/radios
    Select Radio Button                movies      cap
    Radio Button Should Be Set To      movies      cap

CN-2 Selecionando radio button por Value
    Go To                              ${url}/radios
    Select Radio Button                movies      guardians
    Radio Button Should Be Set To      movies      guardians