*** Settings ***
Library    Collections
Library    String
Library    Selenium2Library

*** Variables ***
${my_first_var}    0
@{names}    Jan    Stefan    Arkadiusz

*** Test Cases ***
t1_First_Tests
    [Documentation]    Test to check var value
    Should Be Equal    ${my_first_var}    0

t2_First_Tests
    [Documentation]    Test to check value in list
    Should Contain Match    ${names}    Jan

t3_Second_test
    [Documentation]    Test to check if UPPERCASE
    ${x}    Set Variable    DOM
    Should Be Uppercase    ${x}


*** Keywords ***
