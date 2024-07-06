*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Open Browser Using Chrome Browser
    Open Browser    about:blank    Chrome
    Maximize Browser Window

Close Page Browser
    Close Browser
    Sleep    2s