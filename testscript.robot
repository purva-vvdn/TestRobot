*** Settings ***
Documentation     A test suite with a single test for SmartFitAutomation
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
SmartFitAutomation test
    Open Browser    http://172.24.131.223/login    ${BROWSER}
    Click Element    //form[@class="ng-untouched ng-pristine ng-invalid"]
    Input Text    //input[@id="username"]    nicks.agarwal@gmail.com
    Input Text    //input[@id="username"]    purvatenant@yopmail.com
    Input Text    //input[@id="password"]    PassWord@1
    Sleep    3s
    Click Element    //button[@class="login-btn btn-primary"]
    Click Element    xpath=(//span)[10]
    Click Element    xpath=(//span[@class="mat-mdc-button-touch-target"])[2]
    Sleep    3s
    Click Element    //button[@class="mat-mdc-menu-item mat-mdc-focus-indicator ng-tns-c2786309385-5 cdk-focused cdk-mouse-focused"]
    Click Element    //button[@class="btn-primary"]

    Close Browser