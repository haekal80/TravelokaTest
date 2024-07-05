*** Settings ***
Library    SeleniumLibrary
Resource    ../driver/config.robot

*** Variables ***
${Reset Button}    //a[@class='resetBtn']
${Your Score Text}    //*[text()='1to50, Your score :']
${Completed Text}    //*[text()='TEST COMPLETED']

*** Keywords ***
Verify The Web Has Opened
    Go To    ${URL 1to50}
    Wait Until Element Is Visible    ${Reset Button}
    Element Should Be Visible    ${Reset Button}
    Execute JavaScript    window.scrollTo(0,200)

Click The Puzzle
    FOR    ${i}    IN RANGE    1    51
        ${xpath}=    Set Variable    //div[@style='opacity: 1;' and text()='${i}']
        Wait Until Element Is Visible    ${xpath}
        Click Element    ${xpath}
    END

Verify The Puzzle is Done
    Wait Until Element Is Visible    ${Completed Text}
    Element Should Be Visible    ${Completed Text}
    Wait Until Element Is Visible    ${Your Score Text}
    Element Should Be Visible    ${Your Score Text}
    Sleep    3
    