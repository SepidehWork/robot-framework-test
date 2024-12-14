*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Variables ***
${URL}             https://ultimateqa.com/automation
${BROWSER}         Chrome
#${SEARCH_BUTTON}   xpath://button[contains(@class, 'search-submit')]
${SEARCH_BUTTON}   xpath://button[contains(@class, 'et_pb_menu__icon et_pb_menu__search-button')]
${SEARCH_BOX}      xpath://input[contains(@class, 'et_pb_menu__search-input')]
${EXPECTED_TEXT}   Search …




*** Keywords ***
Open Website
    [Documentation]   باز کردن وب‌سایت
    Open Browser      ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be   Automation Practice - Ultimate QA

Click Search Button
    [Documentation]   کلیک روی دکمه Search و بررسی عملکرد
    Wait Until Element Is Visible    ${SEARCH_BUTTON}    timeout=10s
    Click Element                    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SEARCH_BOX}       timeout=5s

 Verify Search Box Default Text
    [Documentation]   بررسی متن پیش‌فرض در داخل باکس جستجو
    ${placeholder_text}=    Get Element Attribute    ${SEARCH_BOX}    placeholder
    Should Be Equal         ${placeholder_text}      ${EXPECTED_TEXT}

*** Test Cases ***
Verify Search Button Click
    [Documentation]   بررسی عملکرد دکمه Search در سایت Ultimate QA
    Open Website
    Click Search Button
    Verify Search Box Default Text

