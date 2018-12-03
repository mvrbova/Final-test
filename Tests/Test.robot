*** Settings ***
Resource    ../Keywords/Hrm_Keywords.robot
Variables    ../Objects/Hrm_Objects.py
Variables    ../Resources/Test_Data.py
Library    SeleniumLibrary    
Test Setup    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
Test Teardown    Close Browser

*** Variables ***
${prefix}    
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***
Login To HR System
    Click link    ${url}
    Wait Until Page Contains Element    ${id=txtUsername}    admin
    Input Password    ${id=txtPassword}    admin123
    Click Button    ${id=btnLogin}
    Wait Until Page Contains Element    ${id=menu_recruitment_viewRecruitmentModule}
    Wait Until Page Contains Element    ${id=menu_recruitment_viewJobVacancy}
    Click Element    ${name=btnAdd}
    Select From List By Index    ${id=addJobVacancy_jobTitle}    Account Clerk
    Input Text    ${id=addJobVacancy_name}    test
    Input Text    ${id=addJobVacancy_hiringManager}    Linda Anderson
    Input Text    ${id=addJobVacancy_noOfPositions}    2
    Input Text    ${id=addJobVacancy_description}    asfsdf
    Select Checkbox    ${id=addJobVacancy_publishedInFeed}
    
            
Test
    ${vacancy_name}    Get Vacancy Name    ${prefix}