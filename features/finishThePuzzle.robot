*** Settings ***
Resource    ../steps/1to50_steps.robot
Resource    ../driver/resources.robot
Test Setup       Open Browser Using Chrome Browser
Test Teardown    Close Page Browser

*** Test Cases ***
Finish The Puzzle
    Verify The Web Has Opened
    Click The Puzzle
    Verify The Puzzle is Done
