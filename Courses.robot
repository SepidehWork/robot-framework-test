*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Variables ***
${URL}             https://ultimateqa.com/automation#
${BROWSER}         Chrome
${EDUCATION_TAB}   xpath://a[contains(text(),'Education')]
${FREE_COURSE}     xpath://a[contains(text(),'Free Course')]
#${FREE_COURSE}    xpath://div[@id='courses']//a[contains(text(), 'Free Course')]


*** Test Cases ***
Open Website And Select Free Course
    [Documentation]    کردن سایت باز و انتخاب تب فری کورس از اجوکیشن
    Open Browser      ${URL}   ${BROWSER}
    Maximize Browser Window
    Click Element     ${EDUCATION_TAB}
    Wait Until Element Is Visible    ${FREE_COURSE}    timeout=5s
    Click Element     ${FREE_COURSE}
    Close Browser





