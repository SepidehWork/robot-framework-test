*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Test Teardown       Close Browser

*** Variables ***
${URL}             https://ultimateqa.com/automation#
${BROWSER}         Chrome
${EDUCATION_TAB}   xpath://a[contains(text(),'Education')]
${FREE_COURSE}     xpath://a[contains(text(),'Free Course')]
#${FREE_COURSE}    xpath://div[@id='courses']//a[contains(text(), 'Free Course')]

# نوشتن استپ های تست کیس به عنوان keywords (علی کامنت)
#برای هراکشنی یک assert و ویت داشته باشی (علی کامنت)
*** Test Cases ***
Open Website And Select Free Course
    [Documentation]    کردن باز سایت  و انتخاب تب فری course از education
    Open Browser      ${URL}   ${BROWSER}
    Maximize Browser Window
    Click Element     ${EDUCATION_TAB}
    Wait Until Element Is Visible    ${FREE_COURSE}    timeout=5s
    Click Element     ${FREE_COURSE}





