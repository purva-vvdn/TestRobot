*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    about:blank    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=(//span)[10]    timeout=5
    Click Element    xpath=(//span)[10]
    Wait Until Element Is Visible    xpath=//span[@class="mat-mdc-button-touch-target"]    timeout=5
    Click Element    xpath=//span[@class="mat-mdc-button-touch-target"]
Input Text    name=q   //input[@id="mat-input-1"]    Wait Until Element Is Visible    xpath=//input[@id="mat-input-1"]    timeout=5
Input Text    //input[@id="mat-input-1"]    purva-gcat
    Wait Until Element Is Visible    xpath=//span[@class="mat-mdc-select-placeholder    timeout=5
    Click Element    xpath=//span[@class="mat-mdc-select-placeholder
    Wait Until Element Is Visible    xpath=(//mat-pseudo-checkbox[@class="mat-pseudo-checkbox    timeout=5
    Click Element    xpath=(//mat-pseudo-checkbox[@class="mat-pseudo-checkbox
    Wait Until Element Is Visible    xpath=//div[@class="cdk-overlay-backdrop    timeout=5
    Click Element    xpath=//div[@class="cdk-overlay-backdrop
    Wait Until Element Is Visible    xpath=//span[@class="mat-mdc-select-placeholder    timeout=5
    Click Element    xpath=//span[@class="mat-mdc-select-placeholder
    Wait Until Element Is Visible    xpath=//span[@class="mdc-list-item__primary-text"]    timeout=5
    Click Element    xpath=//span[@class="mdc-list-item__primary-text"]
    Wait Until Element Is Visible    xpath=//div[@class="cdk-overlay-backdrop    timeout=5
    Click Element    xpath=//div[@class="cdk-overlay-backdrop
    Wait Until Element Is Visible    xpath=//span[@class="mat-mdc-select-placeholder    timeout=5
    Click Element    xpath=//span[@class="mat-mdc-select-placeholder
    Wait Until Element Is Visible    xpath=//span[@class="mdc-list-item__primary-text"]    timeout=5
    Click Element    xpath=//span[@class="mdc-list-item__primary-text"]
    Wait Until Element Is Visible    xpath=//div[@class="cdk-overlay-backdrop    timeout=5
    Click Element    xpath=//div[@class="cdk-overlay-backdrop
    Wait Until Element Is Visible    xpath=//mat-label[@class="ng-tns-c1205077789-17"]    timeout=5
    Click Element    xpath=//mat-label[@class="ng-tns-c1205077789-17"]
Input Text    name=q   //input[@id="mat-input-2"]    Wait Until Element Is Visible    xpath=//input[@id="mat-input-2"]    timeout=5
Input Text    //input[@id="mat-input-2"]    purva-vvdntes
Input Text    name=q   //input[@id="mat-input-3"]    Wait Until Element Is Visible    xpath=//input[@id="mat-input-3"]    timeout=5
Input Text    //input[@id="mat-input-3"]    purva-vvdn
Input Text    name=q   //input[@id="mat-input-4"]    Wait Until Element Is Visible    xpath=//input[@id="mat-input-4"]    timeout=5
Input Text    //input[@id="mat-input-4"]    purva.agarwal@vvdntech.in
Input Text    name=q   //input[@id="mat-input-5"]    Wait Until Element Is Visible    xpath=//input[@id="mat-input-5"]    timeout=5
Input Text    //input[@id="mat-input-5"]    ***
Input Text    name=q   //textarea[@id="mat-input-6"]    Wait Until Element Is Visible    xpath=//textarea[@id="mat-input-6"]    timeout=5
Input Text    //textarea[@id="mat-input-6"]    test
    Wait Until Element Is Visible    xpath=//button[@class="btn-primary"]    timeout=5
    Click Element    xpath=//button[@class="btn-primary"]
    Close Browser
