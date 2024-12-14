*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Variables ***
${URL}             https://ultimateqa.com/automation#
${BROWSER}         Chrome
${EDUCATION_TAB}   xpath://a[contains(text(),'Education')]
${FREE_COURSE}     xpath://a[contains(text(),'Free Course')]

*** Keywords ***
Open Website
    [Documentation]   باز کردن وب‌سایت
    Open Browser      ${URL}   ${BROWSER}
    Maximize Browser Window
    Title Should Be   Automation Practice - Ultimate QA


Click On Education Tab
    [Documentation]   کلیک روی تب Education
    Click Element     ${EDUCATION_TAB}
    Wait Until Page Contains Element    ${FREE_COURSE}    timeout=5s
    Page Should Contain Element         ${FREE_COURSE}


Select Free Course
    [Documentation]   انتخاب گزینه Free Course
    Wait Until Element Is Visible    ${FREE_COURSE}    timeout=5s
    Click Element     ${FREE_COURSE}
    Wait Until Page Contains    Free Course



*** Test Cases ***
Open Website And Select Free Course
    [Documentation]     سایت بازکردن و انتخاب تب فری کورس از اجوکیشن
    Open Website
    Click On Education Tab
    Select Free Course

